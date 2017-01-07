package com.ddb.struts2.ognl;

import ognl.OgnlContext;

import java.io.PrintStream;

import com.ddb.struts2.ognlvaluestack.Student;
import com.ddb.struts2.ognlvaluestack.Teacher;

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

		PrintStream out = System.out;
		out.println(Ognl.getValue("name", context, stu));
		out.println(Ognl.getValue("name", context, tea));

		out.println(Ognl.getValue("student.name", context));
		out.println(Ognl.getValue("student.score", context));

		out.println(Ognl.getValue("teacher.name", context));
		out.println(Ognl.getValue("teacher.salary", context));
	}
}
