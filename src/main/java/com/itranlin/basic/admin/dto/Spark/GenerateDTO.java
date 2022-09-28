package com.itranlin.basic.admin.dto.Spark;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class GenerateDTO {
    @ApiModelProperty("任务名称")
    private String name;
    @ApiModelProperty("生成数量")
    private int num;
    @ApiModelProperty("系统；30;30;30;10； 安卓；ios；鸿蒙；功能机；")
    private String systemPercent;
    @ApiModelProperty("Sim卡数量；30;30;40； 1个；2个；3个；")
    private String simPercent;
    @ApiModelProperty("品牌")
    private String brand;
    @ApiModelProperty("型号")
    private String model;
}
