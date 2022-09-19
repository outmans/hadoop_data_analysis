package com.itranlin.basic.admin.controller;

import com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;
import com.itranlin.basic.admin.service.IHadoopService;
import com.itranlin.basic.common.bean.RequestResult;
import com.itranlin.basic.common.bean.StatusEnum;
import com.itranlin.basic.common.util.JacksonUtil;
import com.itranlin.basic.common.util.script.ScriptUtils;
import org.apache.catalina.Host;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @author itranlin
 * @since 2022/6/1 20:50
 */
@RestController
@RequestMapping("/api/shell")
public class WebsocketController {

    @Resource
    private ScriptUtils scriptUtils;

    @Resource
    private IHadoopService hadoopService;

    @GetMapping("t")
    public RequestResult<Void> exec(){
        scriptUtils.execHello();
        return RequestResult.e(StatusEnum.OK);
    }

    @GetMapping("execfreeKey")
    public RequestResult<Void> execFreeKey(String hadoopId){
        hadoopService.execFreeKey(hadoopId);
        return RequestResult.e(StatusEnum.OK);
    }

}
