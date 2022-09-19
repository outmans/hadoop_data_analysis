package com.itranlin.basic;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

import java.util.Collections;

/**
 * @author itranlin
 * @since 2022/5/9 20:16
 */
public class CodeGenerator {
    public static void main(String[] args) {
        FastAutoGenerator.create("jdbc:mysql://localhost:3306/test01?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true", "root", "123456")
                .globalConfig(builder -> {
                    builder.author("itranlin") // 设置作者
                            .enableSwagger() // 开启 swagger 模式
                            .fileOverride() // 覆盖已生成文件
                            .disableOpenDir()
                            .outputDir("src/test/java"); // 指定输出目录
                })
                .packageConfig(builder -> {
                    builder.parent("com.itranlin.basic.admin") // 设置父包名
                            .pathInfo(Collections.singletonMap(OutputFile.xml, "src/test/resources")); // 设置mapperXml生成路径
                })
                .strategyConfig(builder -> {
                    builder.addInclude("hadoop_details"); // 设置过滤表前缀
                    builder.controllerBuilder().enableRestStyle();
                    builder.entityBuilder().enableLombok();
                })
                .templateEngine(new FreemarkerTemplateEngine()) // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                .execute();

    }
}
