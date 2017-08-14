package com.zl1030.message.command;

import com.zl1030.message.CuMessage;
import com.zl1030.message.Message;
import com.gameserver.benghuai.core.message.codec.protobuf.SubscribeReq;
import com.google.protobuf.InvalidProtocolBufferException;
import io.netty.channel.ChannelHandlerContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Message(id = 10001)
public class CreateAccountMessage extends CuMessage {

    private static Logger logger = LoggerFactory.getLogger(CreateAccountMessage.class);

    @Override
    public void deCode(ChannelHandlerContext ctx, int codeId, byte[] bytes) throws InvalidProtocolBufferException {
        SubscribeReq.C_CreateAccount_10001 accept = SubscribeReq.C_CreateAccount_10001.parseFrom(bytes);

        logger.info("CreateAccountMessage!!!!!!!!!!!!!!!!!!");
    }

    public void sendWrong(ChannelHandlerContext ctx, int code) {
    }
}
