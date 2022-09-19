package com.itranlin.basic.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;
import com.baomidou.mybatisplus.extension.conditions.update.LambdaUpdateChainWrapper;
import com.itranlin.basic.admin.dto.hadoop.HadoopDTO;
import com.itranlin.basic.admin.entity.Hadoop;
import com.itranlin.basic.admin.entity.HadoopDetails;
import com.itranlin.basic.admin.entity.SysUser;
import com.itranlin.basic.admin.mapper.HadoopMapper;
import com.itranlin.basic.admin.service.IHadoopDetailsService;
import com.itranlin.basic.admin.service.IHadoopService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itranlin.basic.common.bean.StatusEnum;
import com.itranlin.basic.common.exception.RequestException;
import com.itranlin.basic.common.util.Encrypt;
import com.itranlin.basic.common.util.JacksonUtil;
import com.itranlin.basic.common.util.script.ScriptUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author itranlin
 * @since 2022-05-27
 */
@Service
public class HadoopServiceImpl extends ServiceImpl<HadoopMapper, Hadoop> implements IHadoopService {

    @Resource
    @Lazy
    private IHadoopDetailsService hadoopDetailsService;

    @Resource
    @Lazy
    private ScriptUtils scriptUtils;

    @Override
    public List<Hadoop> list(String name) {
      return   new LambdaQueryChainWrapper<>(this.baseMapper)
                .like(null != name, Hadoop::getHdfsName,name)
                .list();
//        QueryWrapper<Hadoop> wrapper = new QueryWrapper<>();
//        wrapper.like(null != name,"name",name);
//        return this.list(wrapper);
    }

    @Override
    public void add(HadoopDTO name) {
       Hadoop hadoop = new Hadoop();
       BeanUtils.copyProperties(name,hadoop);
        hadoop.setCreateTime(LocalDateTime.now());
        hadoop.setNodeTotal(0);
        this.save(hadoop);
    }

    @Override
    public void del(String id) {
        this.removeById(id);
        // SQL = delete from hadoop_details where hadoop_id = #{id}
        new LambdaUpdateChainWrapper<>(hadoopDetailsService.getBaseMapper())
                .eq(HadoopDetails::getHadoopId,id)
                .remove();

    }

    @Override
    public void execFreeKey(String hadoopId) {
        List<HadoopDetails> details =  new LambdaQueryChainWrapper<>(hadoopDetailsService.getBaseMapper())
                .eq(HadoopDetails::getHadoopId,hadoopId).list();
        List<HadoopDetails.Host> hosts = details.stream()
                .map(HadoopDetails::translateHost).collect(Collectors.toList());
        scriptUtils.execfreeKey(JacksonUtil.toString(hosts));

    }
}
