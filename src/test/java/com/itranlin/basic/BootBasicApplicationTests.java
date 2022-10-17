package com.itranlin.basic;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;

@SpringBootTest
class BootBasicApplicationTests {

    @Test
    void contextLoads() throws IOException {
        hdfsDownload("/flume/work");
    }

    public static void hdfsDownload(String path) throws IOException {
        Configuration conf = new Configuration();
        conf.set("fs.defaultFS", "hdfs://10.7.120.133:9000");
        FileSystem fs = FileSystem.newInstance(conf);
        Path p = new Path(path);
        FileStatus[] stats = fs.listStatus(p);
        String filePath = stats[0].getPath().toString();
        String fileName = stats[0].getPath().getName();
        String[] split = fileName.split("\\.");
        String realName = split[0]+"."+split[1];
        System.out.println(realName);
        fs.copyToLocalFile(new Path(filePath), new Path("/Users/jackzhang/IdeaProjects/HadoopServer/src/main/resources/mapper/"+realName));
        fs.delete(new Path("/flume/work/"+fileName),true);
        System.out.println("hadoop文件下载成功");
    }
}
