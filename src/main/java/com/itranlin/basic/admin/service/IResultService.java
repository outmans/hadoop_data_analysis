package com.itranlin.basic.admin.service;

import com.itranlin.basic.admin.dto.result.*;

import java.util.List;

public interface IResultService {

    List<BatteryTop10DTO> selectBatteryTop10(int id);

    List<BrandPercentDTO> selectBrandPercent(int id);

    List<CameraTop5DTO> selectCameraTop5(int id);

    List<CommentTop10DTO> selectCommentTop10(int id);

    List<LaunchTop10DTO> selectLaunchTop10(int id);

    List<PowerTop10DTO> selectPowerTop10(int id);

    List<RateTop5DTO> selectRateTop5(int id);

    List<SystemPercentDTO> selectSystemPercent(int id);

    List<WeightTop10DTO> selectWeightTop10(int id);

    List<SimPercentDTO> selectSimPercent(int id);
}
