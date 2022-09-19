package com.itranlin.basic.common.util.script;

import com.itranlin.basic.admin.service.impl.WebSocketServiceImpl;
import com.itranlin.basic.common.bean.StatusEnum;
import com.itranlin.basic.common.exception.RequestException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import org.springframework.util.ResourceUtils;

import javax.annotation.Resource;
import java.io.*;
import java.sql.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/**
 * @author itranlin
 * @since 2022/6/1 20:50
 */
@Slf4j
@Component
public class ScriptUtils {

    private static final Pattern progressPattern = Pattern.compile("progress-\\d");

    @Resource
    private WebSocketServiceImpl webSocketService;
    @Async
    public void execHello(){
        execShellScript("hello-script.sh","/topic/message", lineText -> {
            try {
                return (Integer.parseInt(lineText.split("-")[1]) + 1)*10;
            }catch (Exception e){
                return null;
            }
        });
    }

    @Async
    public void execfreeKey(String... params){
        execShellScript("scp-scr.sh","/topic/message",lineText -> {
            try {
                if (progressPattern.matcher(lineText).matches()){
                    return (Integer.parseInt(lineText.split("-")[1]) + 1)*10;
                }else {
                    return null;
                }

            }catch (Exception e){
                return null;
            }
        },params);
    }


    public void execShellScript(String scriptFile,String noticePath,ScriptProgress progress,String... params){
        File shellFile;
        // 该类主要用于文件和目录的创建、文件的查找和文件的删除等
        try {
            shellFile = ResourceUtils.getFile("classpath:script/" + scriptFile);
        } catch (FileNotFoundException e) {
            throw new RequestException(StatusEnum.FAIL,"脚本文件不存在",e);


        }
        List<String> cmdGroup = new ArrayList<>();
        cmdGroup.add(getShellCmd());
        cmdGroup.add(scriptFile);
        cmdGroup.addAll(Arrays.asList(params));
        ProcessBuilder pb = new ProcessBuilder(cmdGroup);
        pb.directory(shellFile.getParentFile());
        try {
            Process p = pb.start();
            InputStream inputStream = p.getInputStream();
            BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream),4096);
            while (p.isAlive()){
                String out =  reader.readLine();
                Object progressText = progress.progress(out);
                if (null != progressText){
                    webSocketService.send(noticePath,progressText);
                }
            }
        } catch (IOException e) {
            log.error("error",e);
        }
        log.debug("sh exec finished");
    }

    public String getShellCmd(){
        String os = System.getProperty("os.name");
        if(os.toLowerCase().startsWith("windows")){
            return "bash";
        }else{
            return "sh";
        }
    }
}
