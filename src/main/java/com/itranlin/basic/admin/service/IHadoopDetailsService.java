package com.itranlin.basic.admin.service;

import com.itranlin.basic.admin.dto.hadoop.HadoopDTO;
import com.itranlin.basic.admin.dto.hadoop.HadoopDetailsDTO;
import com.itranlin.basic.admin.entity.HadoopDetails;
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
public interface IHadoopDetailsService extends IService<HadoopDetails> {
    List<HadoopDetails> list(String name,String id);
    void add(HadoopDetailsDTO name);
    void del(String id);
}

