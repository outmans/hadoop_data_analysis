package com.itranlin.basic.admin.controller;

import com.itranlin.basic.admin.dto.hadoop.HadoopDTO;
import com.itranlin.basic.admin.dto.hadoop.HadoopDetailsDTO;
import com.itranlin.basic.admin.entity.Hadoop;
import com.itranlin.basic.admin.entity.HadoopDetails;
import com.itranlin.basic.admin.service.IHadoopDetailsService;
import com.itranlin.basic.admin.service.IHadoopService;
import com.itranlin.basic.common.bean.RequestResult;
import com.itranlin.basic.common.bean.StatusEnum;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author itranlin
 * @since 2022-05-27
 */
@RestController
@RequestMapping("/api/hadoopDetails")
public class HadoopDetailsController {

    @Resource
    private IHadoopDetailsService iHadoopDetailsService;

    @GetMapping("/list")
    @ApiOperation("列表")
    public RequestResult<List<HadoopDetails>> list(@RequestParam(value = "name",required = false) String name,String id){
        return RequestResult.e(StatusEnum.OK, iHadoopDetailsService.list(name,id));
    }

    @PostMapping("/commit")
    @ApiOperation("新增")
    public RequestResult<Void> commit(@RequestBody HadoopDetailsDTO commit){
        iHadoopDetailsService.add(commit);
        return RequestResult.e(StatusEnum.OK);
    }
    @DeleteMapping("/delete/{id}")
    @ApiOperation("删除")
    public RequestResult<Void> detele(@PathVariable String id){
        iHadoopDetailsService.del(id);
        return RequestResult.e(StatusEnum.OK);
    }
}
