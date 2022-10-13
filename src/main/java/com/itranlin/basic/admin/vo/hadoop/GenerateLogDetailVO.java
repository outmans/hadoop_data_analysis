package com.itranlin.basic.admin.vo.hadoop;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

@Data
@ApiModel(value = "生成数据记录详情")
public class GenerateLogDetailVO implements Serializable {
    @ApiModelProperty("系统；30;30;30;10； 安卓；ios；鸿蒙；功能机；")
    private String systemPercent;
    @ApiModelProperty("Sim卡数量；30;70； 1个；2个")
    private String simPercent;
    @ApiModelProperty("品牌")
    private String brand;
    @ApiModelProperty("型号")
    private String model;
}
