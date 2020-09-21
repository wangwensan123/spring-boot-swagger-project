package ${basePackage}.web.api;

import ${basePackage}.core.Result;
import ${basePackage}.model.${modelNameUpperCamel};
import io.swagger.annotations.*;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen")

/**
*
* @author ${author}
* @date ${date}
*/
@Api(value = "${baseRequestMapping}")
public interface ${modelNameUpperCamel}Api {

    @ApiOperation(value = "add", notes = "", response = Result.class, tags={ "${modelNameUpper}_MANAGEMENT", })
    @ApiResponses(value = {
        @ApiResponse(code = 200, message = "", response = Result.class),
        @ApiResponse(code = 200, message = "", response = Result.class) })
    @RequestMapping(value = "/add",
        produces = { "application/json" },
        consumes = { "application/json" },
        method = RequestMethod.POST)
    Result add${modelNameUpperCamel}(@ApiParam(value = "", required = true) @RequestBody ${modelNameUpperCamel} ${modelNameLowerCamel});


    @ApiOperation(value = "delete", notes = "", response = Result.class, tags={ "${modelNameUpper}_MANAGEMENT", })
    @ApiResponses(value = {
        @ApiResponse(code = 200, message = "", response = Result.class),
        @ApiResponse(code = 200, message = "", response = Result.class) })
    @RequestMapping(value = "/delete",
        produces = { "application/json" },
        consumes = { "application/json" },
        method = RequestMethod.DELETE)
    Result delete${modelNameUpperCamel}(@ApiParam(value = "id", required = true) @RequestParam Integer id) ;

    @ApiOperation(value = "update", notes = "", response = Result.class, tags={ "${modelNameUpper}_MANAGEMENT", })
    @ApiResponses(value = {
        @ApiResponse(code = 200, message = "", response = Result.class),
        @ApiResponse(code = 200, message = "", response = Result.class) })
    @RequestMapping(value = "/update",
        produces = { "application/json" },
        consumes = { "application/json" },
        method = RequestMethod.PUT)
    Result update${modelNameUpperCamel}(@ApiParam(value = "", required = true) @RequestBody ${modelNameUpperCamel} ${modelNameLowerCamel}) ;

    @ApiOperation(value = "detail", notes = "", response = Result.class, tags={ "${modelNameUpper}_MANAGEMENT", })
    @ApiResponses(value = {
        @ApiResponse(code = 200, message = "", response = Result.class),
        @ApiResponse(code = 200, message = "", response = Result.class) })
    @RequestMapping(value = "/detail",
        produces = { "application/json" },
        method = RequestMethod.GET)
    Result get${modelNameUpperCamel}(@ApiParam(value = "", required = true) @RequestParam Integer id) ;

    @ApiOperation(value = "list", notes = "", response = Result.class, tags={ "${modelNameUpper}_MANAGEMENT", })
    @ApiResponses(value = {
        @ApiResponse(code = 200, message = "", response = Result.class),
        @ApiResponse(code = 200, message = "", response = Result.class) })
    @RequestMapping(value = "/list",
        produces = { "application/json" },
        method = RequestMethod.GET)
    Result list(@ApiParam(value = "", required = true) @RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) ;

}
