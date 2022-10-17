package com.itranlin.basic.admin.mapper;

import com.itranlin.basic.admin.dto.Spark.*;
import com.itranlin.basic.admin.vo.hadoop.GenerateLogDetailVO;
import com.itranlin.basic.admin.vo.hadoop.GenerateLogVO;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface paramMapper {

    @Select("select battery from battery")
    List<BatteryDTO> selectBattery();

    @Select("select brand from brand")
    List<BrandDTO> selectBrand();

    @Select("select shop_name from shop")
    List<ShopNameDTO> selectShopName();

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

    @Insert("insert into generate_record(name,num,status,system_percent,sim_percent,brand,model,operator,operate_time) values(#{name},#{num},#{status},#{systemPercent},#{simPercent},#{brand},#{model},#{operator},#{operateTime,jdbcType=DATE})")
    @Options(useGeneratedKeys=true, keyProperty="id", keyColumn="id")
    int addGenerateLog(GenerateLogDTO generateDTO);

    @Select("select id,name,num,status,operator,operate_time from generate_record")
    List<GenerateLogVO> getLogData();

    @Select("select system_percent,sim_percent,brand,model from generate_record where id=#{num}")
    GenerateLogDetailVO getLogDataDetail(int num);

    @Update("UPDATE generate_record SET status = '1' WHERE id = #{id}")
    void updateStatus(int id);
}
