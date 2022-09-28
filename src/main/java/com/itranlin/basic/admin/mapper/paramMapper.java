package com.itranlin.basic.admin.mapper;

import com.itranlin.basic.admin.dto.Spark.*;
import com.itranlin.basic.admin.vo.hadoop.GenerateLogVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface paramMapper {

    @Select("select battery from battery")
    List<BatteryDTO> selectBattery();

    @Select("select brand from brand")
    List<BrandDTO> selectBrand();

    @Select("select camera from camera")
    List<CameraDTO> selectCamera();

    @Select("select cpu from cpu")
    List<CpuDTO> selectCpu();

    @Select("select distinct model from model")
    List<ModelDTO> selectModel();

    @Select("select power from power")
    List<PowerDTO> selectPower();

    @Select("select refreshRate from refreshRate")
    List<RefreshDTO> selectRefresh();

    @Select("select wirelessCharging from wirelessCharging")
    List<WirelessDTO> selectWireless();

    @Insert("insert into generate_record(name,num,status,system_percent,sim_percent,brand,model,operate_time) values(#{name},#{num},#{status},#{systemPercent},#{simPercent},#{brand},#{model},#{operateTime,jdbcType=DATE})")
    void addGenerateLog(GenerateLogVO generateVO);

    @Select("select * from generate_record limit #{start},#{end}")
    List<GenerateLogVO> getLogData(int start, int end);
}
