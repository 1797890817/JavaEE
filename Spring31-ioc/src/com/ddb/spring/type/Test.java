package com.ddb.spring.type;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-type.xml");
		DataType entity = (DataType) ctx.getBean("dataType");
		entity.printValue();
	}

}
