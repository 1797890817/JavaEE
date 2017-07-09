package com.xxx.controller;

import static org.junit.Assert.assertNotNull;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSONObject;
import com.xxx.controller.valueobject.RequestObject;
import com.xxx.model.Student;

//配置事务的回滚,对数据库的增删改都会回滚还原,便于测试用例的循环利用
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = false) // 如果配置为false,会更新到数据库！
@Transactional
public class StudentController2Test extends BasicWebTest {

	// 自动注入需要测试的控制器
	// @Autowired
	// private StudentController2 studentController2;

	@Test
	@Ignore
	public void testModStudent() throws Exception, Exception {
		Student student = new Student();
		student.setId(24); // 有ｉｄ表示更新，没有表示新增！
		student.setStuName("lisi3333");
		student.setStuId(2078908111);
		student.setStuSex((byte) 2);
		// 设置值
		String requestJson = JSONObject.toJSONString(student);
		String responseString = mvc
				.perform(post("/student/addOrmod").contentType(MediaType.APPLICATION_JSON).content(requestJson))
				.andDo(print()).andExpect(status().isOk()).andReturn().getResponse().getContentAsString();
		System.out.println(responseString);
		assertNotNull(responseString);
	}

	@Test
	// @Ignore
	public void testDelStudentByIds() throws Exception {
		RequestObject rObject = new RequestObject();
		rObject.setIds("19,24");
		// 设置值
		String requestJson = JSONObject.toJSONString(rObject);
		MvcResult result = mvc.perform(
				MockMvcRequestBuilders.get("/student/del").contentType(MediaType.APPLICATION_JSON).content(requestJson))
				.andDo(MockMvcResultHandlers.print()).andReturn();
		System.out.println(result.getResponse().getContentAsString());
		assertNotNull(result.getResponse().getContentAsString());

	}

	/*
	 * perform：执行一个RequestBuilder请求，会自动执行SpringMVC的流程并映射到相应的控制器执行处理；
	 * andExpect：添加ResultMatcher验证规则，验证控制器执行完成后结果是否正确；
	 * andDo：添加ResultHandler结果处理器，比如调试时打印结果到控制台；
	 * andReturn：最后返回相应的MvcResult；然后进行自定义验证/进行下一步的异步处理； 另外还提供了以下API：
	 * setDefaultRequest：设置默认的RequestBuilder，
	 * 用于在每次perform执行相应的RequestBuilder时自动把该默认的RequestBuilder合并到perform的RequestBuilder中；
	 * setGlobalResultMatchers：设置全局的预期结果验证规则，如我们通过MockMvc测试多个控制器时，假设它们都想验证某个规则时，
	 * 就可以使用这个； setGlobalResultHandlers：设置全局的ResultHandler结果处理器；
	 */
	@Test
	@Ignore
	public void testGetStudentById() throws Exception {
		MvcResult result = mvc.perform(MockMvcRequestBuilders.get("/student/getone/19"))
				.andExpect(MockMvcResultMatchers.view().name("student/studentMod"))
				.andExpect(MockMvcResultMatchers.model().attributeExists("stu")).andDo(MockMvcResultHandlers.print())
				.andReturn();
		Assert.assertNotNull(result.getModelAndView().getModel().get("stu"));
	}

	@Test
	// @Ignore
	public void testGetAllStus() throws Exception {
		String responseString = mvc.perform(get("/student/getall") // 请求的url,请求的方法是get
				.contentType(MediaType.APPLICATION_JSON) // 数据的格式
		).andExpect(status().isOk()) // 返回的状态是200
				.andDo(print()) // 打印出请求和相应的内容
				.andReturn().getResponse().getContentAsString(); // 将相应的数据转换为字符串
		System.out.println("--------返回的json = " + responseString);
		assertNotNull(responseString);
	}

}
