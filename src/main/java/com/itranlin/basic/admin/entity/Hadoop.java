package com.itranlin.basic.admin.entity;

import java.io.Serializable;
import java.time.LocalDateTime;

import com.baomidou.mybatisplus.annotation.FieldStrategy;
import com.baomidou.mybatisplus.annotation.TableField;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * <p>
 * 
 * </p>
 *
 * @author itranlin
 * @since 2022-05-27
 */
@ApiModel(value = "Hadoop对象", description = "")
public class Hadoop implements Serializable {

    private static final long serialVersionUID = 1L;

    private String id;

    private String hdfsName;

    private LocalDateTime createTime;

    @TableField(insertStrategy = FieldStrategy.IGNORED)
    private String hdfsStatus;

    @TableField(insertStrategy = FieldStrategy.IGNORED)
    private Integer nodeTotal;


    public String getHdfsStatus() {
        return hdfsStatus;
    }

    public void setHdfsStatus(String hdfsStatus) {
        this.hdfsStatus = hdfsStatus;
    }

    public Integer getNodeTotal() {
        return nodeTotal;
    }

    public void setNodeTotal(Integer nodeTotal) {
        this.nodeTotal = nodeTotal;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    public String getHdfsName() {
        return hdfsName;
    }

    public void setHdfsName(String hdfsName) {
        this.hdfsName = hdfsName;
    }
    public LocalDateTime getCreateTime() {
        return createTime;
    }

    public void setCreateTime(LocalDateTime createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Hadoop{" +
                "id='" + id + '\'' +
                ", hdfsName='" + hdfsName + '\'' +
                ", createTime=" + createTime +
                ", hdfsStatus='" + hdfsStatus + '\'' +
                ", nodeTotal=" + nodeTotal +
                '}';
    }
}
