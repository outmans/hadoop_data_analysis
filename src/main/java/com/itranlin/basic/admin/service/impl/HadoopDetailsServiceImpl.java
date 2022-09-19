package com.itranlin.basic.admin.service.impl;

import com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;
import com.baomidou.mybatisplus.extension.conditions.update.LambdaUpdateChainWrapper;
import com.itranlin.basic.admin.dto.hadoop.HadoopDTO;
import com.itranlin.basic.admin.dto.hadoop.HadoopDetailsDTO;
import com.itranlin.basic.admin.entity.Hadoop;
import com.itranlin.basic.admin.entity.HadoopDetails;
import com.itranlin.basic.admin.mapper.HadoopDetailsMapper;
import com.itranlin.basic.admin.service.IHadoopDetailsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itranlin.basic.admin.service.IHadoopService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author itranlin
 * @since 2022-05-27
 */
@Service
public class HadoopDetailsServiceImpl extends ServiceImpl<HadoopDetailsMapper, HadoopDetails> implements IHadoopDetailsService {

    @Resource
    private IHadoopService hadoopService;

    @Override
    public List<HadoopDetails> list(String name,String id) {
        return   new LambdaQueryChainWrapper<>(this.baseMapper)
                .like(null != name, HadoopDetails::getName,name)
                .eq(HadoopDetails::getHadoopId,id)
                .list();
    }

    @Override
    public void add(HadoopDetailsDTO name) {
        HadoopDetails hadoopDetails = new HadoopDetails();
        BeanUtils.copyProperties(name,hadoopDetails);
        this.save(hadoopDetails);
        // SQL = select count(1) from hadoop_details where hadoop_id = #{name.getHadoopId()}
        int totalCount = new LambdaQueryChainWrapper<>(this.baseMapper)  //baseMapper == hadoopDetailMapper  Lam查询构造器
                //通过Mapper构建查询构造器，.eq 通过HadoopId
                .eq(HadoopDetails::getHadoopId,name.getHadoopId())
                .count().intValue();
        new LambdaUpdateChainWrapper<>(hadoopService.getBaseMapper())
                .eq(Hadoop::getId,name.getHadoopId())
                .set(Hadoop::getNodeTotal,totalCount)
                .update();
    }

    @Override
    public void del(String id) {
        HadoopDetails details = this.getById(id);
        this.removeById(id);
        int totalCount = new LambdaQueryChainWrapper<>(this.baseMapper)  //baseMapper == hadoopDetailMapper  Lam查询构造器
                //通过Mapper构建查询构造器，.eq 通过HadoopId
                .eq(HadoopDetails::getHadoopId,details.getHadoopId())
                .count().intValue();
        new LambdaUpdateChainWrapper<>(hadoopService.getBaseMapper())
                .eq(Hadoop::getId,details.getHadoopId())
                .set(Hadoop::getNodeTotal,totalCount)
                .update();
    }
}
