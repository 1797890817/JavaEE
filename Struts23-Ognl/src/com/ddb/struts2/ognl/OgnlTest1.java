package com.ddb.struts2.ognl;

import ognl.OgnlContext;
import ognl.Ognl;
import ognl.OgnlException;

public class OgnlTest1 {

	/**
	 * @param args
	 * @throws OgnlException
	 */
	public static void main(String[] args) throws OgnlException {
		Student stu = new Student("Jack", 20);
		Teacher tea = new Teacher("Scott", 40);

		OgnlContext context = new OgnlContext();
		context.put("student", stu);
		context.put("teacher", tea);

		System.out.println(Ognl.getValue("name", context, stu));
		System.out.println(Ognl.getValue("name", context, tea));

		System.out.println(Ognl.getValue("student.name", context));
		System.out.println(Ognl.getValue("student.score", context));

		System.out.println(Ognl.getValue("teacher.name", context));
		System.out.println(Ognl.getValue("teacher.salary", context));
	}
}
