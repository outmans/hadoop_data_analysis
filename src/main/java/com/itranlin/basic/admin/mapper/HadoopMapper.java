package com.itranlin.basic.admin.mapper;

import com.itranlin.basic.admin.entity.Hadoop;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author itranlin
 * @since 2022-05-27
 */
public interface HadoopMapper extends BaseMapper<Hadoop> {

    void remove(@Param("id") String id);
}
