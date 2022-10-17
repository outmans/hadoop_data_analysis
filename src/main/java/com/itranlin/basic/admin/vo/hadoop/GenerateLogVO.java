package com.itranlin.basic.admin.vo.hadoop;

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
    @ApiModelProperty("操作者")
    private String operator;
    @ApiModelProperty("生成时间")
    private String operateTime;
}
