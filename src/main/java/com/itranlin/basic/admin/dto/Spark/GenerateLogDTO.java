package com.itranlin.basic.admin.dto.Spark;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@ApiModel(value = "生成数据记录")
public class GenerateLogDTO {
    @ApiModelProperty("记录id")
    private int id;
    @ApiModelProperty("任务名称")
    private String name;
    @ApiModelProperty("操作者")
    private String actor;
    @ApiModelProperty("生成数量")
    private int num;
    @ApiModelProperty("任务状态")
    private String status;
    @ApiModelProperty("系统；30;30;30;10； 安卓；ios；鸿蒙；功能机；")
    private String systemPercent;
    @ApiModelProperty("Sim卡数量；30;70； 1个；2个")
    private String simPercent;
    @ApiModelProperty("品牌")
    private String brand;
    @ApiModelProperty("型号")
    private String model;
    @ApiModelProperty("操作者")
    private String operator;
    @ApiModelProperty("生成时间")
    private String operateTime;
}
