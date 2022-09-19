package com.itranlin.basic.admin.service;

import com.itranlin.basic.admin.dto.hadoop.HadoopDTO;
import com.itranlin.basic.admin.entity.Hadoop;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author itranlin
 * @since 2022-05-27
 */
public interface IHadoopService extends IService<Hadoop> {

    List<Hadoop> list(String name);
    void add(HadoopDTO name);
    void del(String name);
    void execFreeKey(String hadoopId);
}
