package com.zl1030.message.command;

import com.zl1030.message.CuMessage;
import com.zl1030.message.Message;
import com.gameserver.benghuai.core.message.codec.protobuf.SubscribeReq;
import com.google.protobuf.InvalidProtocolBufferException;
import io.netty.channel.ChannelHandlerContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@Message(id = 10004)
public class LoginAccountMessage extends CuMessage {

    private static Logger logger = LoggerFactory.getLogger(LoginAccountMessage.class);

    @Override
    public void deCode(ChannelHandlerContext ctx, int codeId, byte[] bytes) throws InvalidProtocolBufferException {
        SubscribeReq.C_LoginAccount_10004 accept = SubscribeReq.C_LoginAccount_10004.parseFrom(bytes);

        logger.info("C_LoginAccount_10004!!!!!!!!!!!!!!!!!! " + accept.getAccountName() + " " + accept.getPassword());
    }

    public void sendWrong(ChannelHandlerContext ctx, int code) {

    }

}
