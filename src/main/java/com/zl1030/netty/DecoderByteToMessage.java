package com.zl1030.netty;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ByteToMessageDecoder;
import org.springframework.stereotype.Component;

import java.util.List;

public class DecoderByteToMessage extends ByteToMessageDecoder {

    protected void decode(ChannelHandlerContext ctx, ByteBuf in, List<Object> out) throws Exception {

        if (in.readableBytes() < Integer.BYTES * 2) {
            return;
        }
        in.markReaderIndex();
        int dataLength = in.readInt();// 本次数据包长度

        if (dataLength < 0) {// 长度异常，关闭连接
            ctx.close();
            return;
        }

        if (in.readableBytes() < dataLength + Integer.BYTES) {// 后续可读数据长度不够数据包长度,留到下次重新处理
            in.resetReaderIndex();
            return;
        }

        byte[] body = new byte[dataLength + Integer.BYTES];
        in.readBytes(body);// 读出本次指令数据 【指令号int】【指令数据 byte[dataLength]】

        ByteBuf delimiter = Unpooled.copiedBuffer(body);
        out.add(delimiter);// 发给SubReqServerHandler解析指令，执行游戏逻辑
    }
}