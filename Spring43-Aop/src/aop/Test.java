package aop;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import entity.User;
import service.UserService;

public class Test {

	private static ApplicationContext ctx;

	public static void main(String[] args) {
		ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService = (UserService) ctx.getBean("service");
		
		User user = new User();
		user.setId(1);
		user.setUsername("zhangsan");
		user.setPassword("888888");
		user.setEamil("zhangsan@xarcw.com");
		userService.addNewUser(user);
	}

}
