package com.itranlin.basic.admin.controller;


import com.itranlin.basic.common.bean.RequestResult;
import com.itranlin.basic.common.bean.StatusEnum;
import com.itranlin.basic.admin.dto.user.UserCommitDTO;
import com.itranlin.basic.admin.dto.user.UserDTO;
import com.itranlin.basic.admin.service.ISysUserService;
import com.itranlin.basic.admin.vo.user.UserVO;

import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * @author CY
 * @since 2020-03-15
 */
@RestController
@RequestMapping("/api/user")
@Api(tags = {"用户相关"})
public class SysUserController {
    @Resource
    private ISysUserService userService;

    @PostMapping(value = "/list")
    @ApiOperation(value = "用户列表")
    public RequestResult<IPage<UserVO>> list(@RequestBody UserDTO userDTO) {
        return RequestResult.e(StatusEnum.OK, userService.userPage(userDTO));
    }

    @PostMapping(value = "/commit")
    @ApiOperation(value = "新增用户")
    public RequestResult<Void> commit(@RequestBody UserCommitDTO user) {
        userService.commit(user);
        return RequestResult.e(StatusEnum.OK);
    }

    @GetMapping(value = "/remove/{id}")
    @ApiOperation(value = "删除用户")
    public RequestResult<Void> remove(@PathVariable String id) {
        userService.removeById(id);
        return RequestResult.e(StatusEnum.OK);
    }

}
