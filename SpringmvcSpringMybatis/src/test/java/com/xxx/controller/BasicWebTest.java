package com.xxx.controller;

import org.junit.Before;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@SuppressWarnings("unused")
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration // 用于声明一个ApplicationContext集成测试加载WebApplicationContext。作用是模拟ServletContext
@ContextConfiguration(locations = { "classpath:spring.xml", "classpath:spring-mvc.xml" }) // 指定spring的配置文件，扫描相应的配置，将类初始化等。
public class BasicWebTest extends AbstractTransactionalJUnit4SpringContextTests {

	// 参考链接如下：----按下ｃｔｒｌ鼠标移动到网址上会变成超链接！
	// 1.JUnit4 详解 - eggbucket - 博客园
	// http://www.cnblogs.com/eggbucket/archive/2012/02/02/2335697.html
	// 2.JUnit简单的Controller测试：http://www.cnblogs.com/formyjava/p/4595337.html
	// 3.利用JUnit对springMVC的Controller进行测试:http://zhangzhaoaaa.iteye.com/blog/2200096?utm_source=tuicool
	// 4.SpringMVC测试框架详解:http://jinnianshilongnian.iteye.com/blog/2004660
	// ５．MockMVC使用－－Junit测试Controller：http://www.cnblogs.com/0201zcr/p/5756642.html

	@Autowired
	protected WebApplicationContext wac;
	protected MockMvc mvc;

	// 模拟request,response
	private MockHttpServletRequest request;
	private MockHttpServletResponse response;

	// 执行测试方法之前初始化模拟request,response
	@Before // 这个方法在每个方法执行之前都会执行一遍
	public void setUp() {
		this.mvc = MockMvcBuilders.webAppContextSetup(wac).build();

		request = new MockHttpServletRequest();
		request.setCharacterEncoding("UTF-8"); // 设定编码为UTF-8
		response = new MockHttpServletResponse();
	}

}