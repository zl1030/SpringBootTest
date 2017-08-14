package com.zl1030.message;

import com.google.protobuf.InvalidProtocolBufferException;
import io.netty.channel.ChannelHandlerContext;

/**
 * Created by Administrator on 2017/2/12 0012.
 */
public abstract class CuMessage {

    public abstract void deCode(ChannelHandlerContext paramChannelHandlerContext, int paramInt, byte[] paramArrayOfByte) throws InvalidProtocolBufferException;

    public abstract void sendWrong(ChannelHandlerContext ctx, int code);
}
