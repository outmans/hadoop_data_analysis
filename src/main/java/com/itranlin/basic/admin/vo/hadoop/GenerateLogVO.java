package com.itranlin.basic.admin.vo.hadoop;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
@ApiModel(value = "生成数据记录")
public class GenerateLogVO implements Serializable {
    @ApiModelProperty("记录id")
    private int id;
    @ApiModelProperty("任务名称")
    private String name;
    @ApiModelProperty("生成数量")
    private int num;
    @ApiModelProperty("任务状态")
    private String status;
    @ApiModelProperty("系统；30;30;30;10； 安卓；ios；鸿蒙；功能机；")
    private String systemPercent;
    @ApiModelProperty("Sim卡数量；30;30;40； 1个；2个；3个；")
    private String simPercent;
    @ApiModelProperty("品牌")
    private String brand;
    @ApiModelProperty("型号")
    private String model;
    @ApiModelProperty("生成时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone="GMT+8")
    private Date operateTime;
}
