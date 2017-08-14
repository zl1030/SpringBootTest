package com.zl1030.netty;

import com.zl1030.aop.MessageRouter;
import io.netty.buffer.ByteBuf;
import io.netty.channel.Channel;
import io.netty.channel.ChannelHandlerAdapter;
import io.netty.channel.ChannelHandlerContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class SubReqServerHandler extends ChannelHandlerAdapter {

    private static final Logger logger = LoggerFactory.getLogger(SubReqServerHandler.class);

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        ByteBuf buf = (ByteBuf) msg;
        int cmdId = buf.readInt();
        ByteBuf buf2 = buf.readBytes(buf);
        byte[] msgByte = new byte[buf.readableBytes()];
        buf2.readBytes(msgByte);

        if (MessageRouter.router.containsKey(cmdId)) {
            MessageRouter.router.get(cmdId).deCode(ctx, cmdId, msgByte);
        }
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
//        if ("远程主机强迫关闭了一个现有的连接。".equals(cause.getLocalizedMessage())) {
//            LoggerUtil.debug("远程地址为" + ctx.channel().remoteAddress() + "出现异常导致关闭 " + cause);
//        } else {
        logger.debug(cause.getLocalizedMessage(), cause);
//        }
        // PlayerKeepChannel.getPlayerByCtx(ctx).downPlayer();
        // System.out.println("远程地址为"+ctx.channel().remoteAddress()+"出现异常导致关闭 "
        // + cause);
    }

    @Override
    public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        Channel incoming = ctx.channel();
        logger.debug("Client:{} Added", incoming.remoteAddress());
    }

    @Override
    public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
        Channel incoming = ctx.channel();
//        Player p = PlayerKeepChannel.getPlayerByCtx(ctx);
//        if (p != null) {
//            StaticMessage.PutLeaveMap(p);
//            // p.downPlayer();
//        }
        logger.debug("Client:{} Removed", incoming.remoteAddress());
//        ctx.close();
    }

    @Override
    public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {

    }

}
