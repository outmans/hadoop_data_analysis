package com.itranlin.basic.admin.mapper;

import com.itranlin.basic.admin.dto.Spark.BatteryDTO;
import com.itranlin.basic.admin.dto.result.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface resultMapper {

    @Select("select * from batteryTop10 where task_id = #{id}")
    List<BatteryTop10DTO> selectBatteryTop10(int id);

    @Select("select * from brandPercent where task_id = #{id}")
    List<BrandPercentDTO> selectBrandPercent(int id);

    @Select("select * from cameraTop5 where task_id = #{id}")
    List<CameraTop5DTO> selectCameraTop5(int id);

    @Select("select * from commentTop10 where task_id = #{id}")
    List<CommentTop10DTO> selectCommentTop10(int id);

    @Select("select * from launchTop10 where task_id = #{id}")
    List<LaunchTop10DTO> selectLaunchTop10(int id);

    @Select("select * from powerTop10 where task_id = #{id}")
    List<PowerTop10DTO> selectPowerTop10(int id);

    @Select("select * from rateTop5 where task_id = #{id}")
    List<RateTop5DTO> selectRateTop5(int id);

    @Select("select * from systemPercent where task_id = #{id}")
    List<SystemPercentDTO> selectSystemPercent(int id);

    @Select("select * from weightTop10 where task_id = #{id}")
    List<WeightTop10DTO> selectWeightTop10(int id);

    @Select("select * from simPercent where task_id = #{id}")
    List<SimPercentDTO> selectSimPercent(int id);
}
