package com.itranlin.basic.admin.controller;

import com.itranlin.basic.admin.dto.result.*;
import com.itranlin.basic.admin.service.IResultService;
import com.itranlin.basic.common.bean.RequestResult;
import com.itranlin.basic.common.bean.StatusEnum;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/api/result")
public class ResultController {

    @Resource
    private IResultService resultService;

    @GetMapping("/getBatteryTop10")
    @ApiOperation("获取手机电池容量前十的手机")
    @ResponseBody
    public RequestResult<List<BatteryTop10DTO>> getBatteryTop10(Integer taskId) {
        return RequestResult.e(StatusEnum.OK,resultService.selectBatteryTop10(taskId));
    }

    @GetMapping("/getBrandPercent")
    @ApiOperation("获取手机品牌占比")
    @ResponseBody
    public RequestResult<List<BrandPercentDTO>> getBrandPercent(Integer taskId) {
        return RequestResult.e(StatusEnum.OK,resultService.selectBrandPercent(taskId));
    }

    @GetMapping("/getCameraTop5")
    @ApiOperation("获取摄像头像素前五的手机")
    @ResponseBody
    public RequestResult<List<CameraTop5DTO>> getCameraTop5(Integer taskId) {
        return RequestResult.e(StatusEnum.OK,resultService.selectCameraTop5(taskId));
    }

    @GetMapping("/getCommentTop10")
    @ApiOperation("获取商品评论数前十的手机")
    @ResponseBody
    public RequestResult<List<CommentTop10DTO>> getCommentTop10(Integer taskId) {
        return RequestResult.e(StatusEnum.OK,resultService.selectCommentTop10(taskId));
    }

    @GetMapping("/getLaunchTop10")
    @ApiOperation("获取上市时间后十的手机")
    @ResponseBody
    public RequestResult<List<LaunchTop10DTO>> getLaunchTop10(Integer taskId) {
        return RequestResult.e(StatusEnum.OK,resultService.selectLaunchTop10(taskId));
    }

    @GetMapping("/getPowerTop10")
    @ApiOperation("获取手机充电功率前十的手机")
    @ResponseBody
    public RequestResult<List<PowerTop10DTO>> getPowerTop10(Integer taskId) {
        return RequestResult.e(StatusEnum.OK,resultService.selectPowerTop10(taskId));
    }

    @GetMapping("/getRateTop5")
    @ApiOperation("获取刷新率前五的手机")
    @ResponseBody
    public RequestResult<List<RateTop5DTO>> getRateTop5(Integer taskId) {
        return RequestResult.e(StatusEnum.OK,resultService.selectRateTop5(taskId));
    }

    @GetMapping("/getSystemPercent")
    @ApiOperation("获取手机系统占比")
    @ResponseBody
    public RequestResult<List<SystemPercentDTO>> getSystemPercent(Integer taskId) {
        return RequestResult.e(StatusEnum.OK,resultService.selectSystemPercent(taskId));
    }

    @GetMapping("/getWeightTop10")
    @ApiOperation("获取重量最轻前十的手机")
    @ResponseBody
    public RequestResult<List<WeightTop10DTO>> getWeightTop10(Integer taskId) {
        return RequestResult.e(StatusEnum.OK,resultService.selectWeightTop10(taskId));
    }

    @GetMapping("/getSimPercent")
    @ApiOperation("获取单双卡手机占比")
    @ResponseBody
    public RequestResult<List<SimPercentDTO>> getSimPercent(Integer taskId) {
        return RequestResult.e(StatusEnum.OK,resultService.selectSimPercent(taskId));
    }
}
