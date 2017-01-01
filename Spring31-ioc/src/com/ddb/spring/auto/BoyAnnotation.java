package com.ddb.spring.auto;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
/**
 * @Component("boyAnnotation") 给组件取个名字
 * @Autowired 注入属性，可以放在属性或者Setter方法上面 byType自动注入
 * 
 * @Resource 注入属性 ，可以放在属性或者Setter方法上面
 * 				属性name解析bean的名字，type解析bean的类型，byName自动注入
 * 				@Resource(name = "usaGirlFriend")、@Resource(type = UsaGirlFriend.class)
 * @Repository	dao层bean(持久化层)
 * @Service 	service层bean(服务层)
 * @Controller	mvc控制层bean(表现层)
 * 
 * @Scope("session") bean的作用域
 * 		singleton	单例，共享bean
 * 		prototype	注入新的bean
 * 		request		http request 有效(一个请求一个新的bean)
 * 		session		http session 有效(一个请求一个新的bean)
 * 		global session	portlet web 有效 全局session
 * @author win
 *
 */

@Component("boyAnnotation")@Scope
public class BoyAnnotation {
	private static Logger logger = Logger.getLogger(BoyAnnotation.class);
	@Autowired
	private UsaGirlFriend usaGirlFriend;

	public UsaGirlFriend getUsaGirlFriend() {
		return usaGirlFriend;
	}

	// @Resource(type = UsaGirlFriend.class)
	//@Resource(name = "usaGirlFriend")
	public void setUsaGirlFriend(UsaGirlFriend usaGirlFriend) {
		this.usaGirlFriend = usaGirlFriend;
	}

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-auto.xml");
		BoyAnnotation boy = (BoyAnnotation) ctx.getBean("boyAnnotation");
		logger.info(boy.usaGirlFriend.speak());
	}

}
