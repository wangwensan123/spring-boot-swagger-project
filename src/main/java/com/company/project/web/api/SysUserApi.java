package com.company.project.web.api;

import com.company.project.core.Result;
import com.company.project.model.SysUser;
import io.swagger.annotations.*;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2020-09-17T18:03:37.019+08:00")

@Api(value = "/sys/user", description = "the user API")
public interface SysUserApi {

    @ApiOperation(value = "添加用户", notes = "", response = Result.class, tags={ "USER_MANAGEMENT", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "", response = Result.class),
        @ApiResponse(code = 200, message = "", response = Result.class) })
    @RequestMapping(value = "/add",
        produces = { "application/json" }, 
        consumes = { "application/json" },
        method = RequestMethod.POST)
    Result add(@ApiParam(value = "", required = true) @RequestBody SysUser sysUser);


    @ApiOperation(value = "删除用户", notes = "", response = Result.class, tags={ "USER_MANAGEMENT", })
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "", response = Result.class),
            @ApiResponse(code = 200, message = "", response = Result.class) })
    @RequestMapping(value = "/delete",
            produces = { "application/json" },
            consumes = { "application/json" },
            method = RequestMethod.DELETE)
    Result delete(@ApiParam(value = "id", required = true) @RequestParam Integer id) ;

    @ApiOperation(value = "编辑用户", notes = "", response = Result.class, tags={ "USER_MANAGEMENT", })
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "", response = Result.class),
            @ApiResponse(code = 200, message = "", response = Result.class) })
    @RequestMapping(value = "/update",
            produces = { "application/json" },
            consumes = { "application/json" },
            method = RequestMethod.PUT)
    Result update(@ApiParam(value = "", required = true) @RequestBody SysUser sysUser) ;

    @ApiOperation(value = "用户详情", notes = "", response = Result.class, tags={ "USER_MANAGEMENT", })
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "", response = Result.class),
            @ApiResponse(code = 200, message = "", response = Result.class) })
    @RequestMapping(value = "/detail",
            produces = { "application/json" },
            consumes = { "application/json" },
            method = RequestMethod.POST)
    Result detail(@ApiParam(value = "", required = true) @RequestParam Integer id) ;

    @ApiOperation(value = "用户列表", notes = "", response = Result.class, tags={ "USER_MANAGEMENT", })
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "", response = Result.class),
            @ApiResponse(code = 200, message = "", response = Result.class) })
    @RequestMapping(value = "/list",
            produces = { "application/json" },
            consumes = { "application/json" },
            method = RequestMethod.POST)
    Result list(@ApiParam(value = "", required = true) @RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) ;

}
