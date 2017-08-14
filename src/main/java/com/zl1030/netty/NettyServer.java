package com.zl1030.netty;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.buffer.PooledByteBufAllocator;
import io.netty.channel.Channel;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.codec.LengthFieldBasedFrameDecoder;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/2/22 0022.
 */
@Component
//实现ApplicationContextAware以获得ApplicationContext中的所有bean
public class NettyServer implements ApplicationContextAware, Runnable {

    private static final Logger logger = LoggerFactory.getLogger(NettyServer.class);

    private Channel channel;
    private EventLoopGroup bossGroup;
    private EventLoopGroup workerGroup;

    private Map<String, Object> exportServiceMap = new HashMap<String, Object>();

    @Value("${game.netty.ioThreadNum:5}")
    int ioThreadNum;

    @Value("${game.netty.port:9090}")
    int port;

    /**
     * 启动
     *
     * @throws InterruptedException
     */
    @PostConstruct
    public void start() throws InterruptedException {


        logger.info("begin to start netty server");

        (new Thread(this)).start();

        logger.info("NettyServer server listening on port " + port + " and ready for connections...");
    }

    @PreDestroy
    public void stop() {
        logger.info("destroy server resources");
        if (null == channel) {
            logger.error("server channel is null");
        }
        bossGroup.shutdownGracefully();
        workerGroup.shutdownGracefully();
        channel.closeFuture().syncUninterruptibly();
        bossGroup = null;
        workerGroup = null;
        channel = null;
    }

    /**
     * 利用此方法获取spring ioc接管的所有bean
     *
     * @param ctx
     * @throws BeansException
     */
    public void setApplicationContext(ApplicationContext ctx) throws BeansException {

    }

    @Override
    public void run() {
        bossGroup = new NioEventLoopGroup();// 这里定义两个池，一个池管理一个池，就是银河系包裹着太阳系
        workerGroup = new NioEventLoopGroup();

        try {
            ServerBootstrap b = new ServerBootstrap();
            b.group(bossGroup, workerGroup)//

                    .channel(NioServerSocketChannel.class)//

                    .option(ChannelOption.SO_BACKLOG, 1024)//
                    .option(ChannelOption.SO_KEEPALIVE, true)//
                    .option(ChannelOption.SO_REUSEADDR, true)//
                    .option(ChannelOption.SO_LINGER, 0)//
                    .option(ChannelOption.SO_RCVBUF, 1024 * 256) //
                    .option(ChannelOption.SO_SNDBUF, 1024 * 256) //
                    .option(ChannelOption.TCP_NODELAY, true)//
                    .option(ChannelOption.ALLOCATOR, PooledByteBufAllocator.DEFAULT)//
                    .childOption(ChannelOption.ALLOCATOR, PooledByteBufAllocator.DEFAULT)//
                    .handler(new LoggingHandler(LogLevel.INFO)).childHandler(
                    new ChannelInitializer<SocketChannel>() {
                        @Override
                        protected void initChannel(SocketChannel ch) throws Exception {
                            ch.pipeline().addLast(new LengthFieldBasedFrameDecoder(1024 * 1024, 0, 4, 4, 0));
                            ch.pipeline().addLast(new DecoderByteToMessage());
                            ch.pipeline().addLast(new SubReqServerHandler());
                        }
                    }
            );

            channel = b.bind(port).sync().channel();
            channel.closeFuture().sync();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
