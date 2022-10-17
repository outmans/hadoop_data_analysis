package com.itranlin.basic.admin.service.impl;

import com.itranlin.basic.admin.dto.result.*;
import com.itranlin.basic.admin.mapper.resultMapper;
import com.itranlin.basic.admin.service.IResultService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ResultServiceImpl implements IResultService {

    @Resource
    private resultMapper resultMapper;

    @Override
    public List<BatteryTop10DTO> selectBatteryTop10(int id) {
        return resultMapper.selectBatteryTop10(id);
    }

    @Override
    public List<BrandPercentDTO> selectBrandPercent(int id) {
        return resultMapper.selectBrandPercent(id);
    }

    @Override
    public List<CameraTop5DTO> selectCameraTop5(int id) {
        return resultMapper.selectCameraTop5(id);
    }

    @Override
    public List<CommentTop10DTO> selectCommentTop10(int id) {
        return resultMapper.selectCommentTop10(id);
    }

    @Override
    public List<LaunchTop10DTO> selectLaunchTop10(int id) {
        return resultMapper.selectLaunchTop10(id);
    }

    @Override
    public List<PowerTop10DTO> selectPowerTop10(int id) {
        return resultMapper.selectPowerTop10(id);
    }

    @Override
    public List<RateTop5DTO> selectRateTop5(int id) {
        return resultMapper.selectRateTop5(id);
    }

    @Override
    public List<SystemPercentDTO> selectSystemPercent(int id) {
        return resultMapper.selectSystemPercent(id);
    }

    @Override
    public List<WeightTop10DTO> selectWeightTop10(int id) {
        return resultMapper.selectWeightTop10(id);
    }

    @Override
    public List<SimPercentDTO> selectSimPercent(int id) {
        return resultMapper.selectSimPercent(id);
    }
}
