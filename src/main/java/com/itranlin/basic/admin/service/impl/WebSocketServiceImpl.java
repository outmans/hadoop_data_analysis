package com.itranlin.basic.admin.service.impl;

import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author itranlin
 * @since 2022/5/21 16:28
 */
@Service
public class WebSocketServiceImpl {
    @Resource
    private SimpMessagingTemplate messagingTemplate;

    public void send(String des, Object message){
        messagingTemplate.convertAndSend(des,message);
    }

}
