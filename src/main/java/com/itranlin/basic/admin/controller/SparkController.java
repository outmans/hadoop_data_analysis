package com.itranlin.basic.admin.controller;

import com.itranlin.basic.admin.dto.Spark.GenerateDTO;
import com.itranlin.basic.admin.service.ISparkService;
import com.itranlin.basic.admin.vo.hadoop.GenerateLogDetailVO;
import com.itranlin.basic.admin.vo.hadoop.GenerateLogVO;
import com.itranlin.basic.common.bean.RequestResult;
import com.itranlin.basic.common.bean.StatusEnum;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api/spark")
public class SparkController {

    @Resource
    private ISparkService sparkService;

    @PostMapping("/generateData")
    @ApiOperation("随机生成数据")
    public RequestResult<Void> generateData(@RequestBody GenerateDTO generateDTO) throws IOException, InterruptedException {
        sparkService.randomAll(generateDTO);
        return RequestResult.e(StatusEnum.OK);
    }

    @GetMapping("/getLogData")
    @ApiOperation("获取数据生成记录")
    @ResponseBody
    public RequestResult<List<GenerateLogVO>> getLogData() {
        return RequestResult.e(StatusEnum.OK,sparkService.getLogData());
    }

    @GetMapping("/getLogDataDetail")
    @ApiOperation("获取数据生成记录详情")
    public RequestResult<GenerateLogDetailVO> getLogDataDetail(int id) {
        return RequestResult.e(StatusEnum.OK,sparkService.getLogDataDetail(id));
    }
}
