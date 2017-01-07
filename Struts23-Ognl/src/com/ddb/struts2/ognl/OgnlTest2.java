package com.ddb.struts2.ognl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import com.ddb.struts2.ognlvaluestack.Teacher;

import ognl.Ognl;
import ognl.OgnlContext;
import ognl.OgnlException;

public class OgnlTest2 {

	/**
	 * @param args
	 * @throws OgnlException 
	 */
	@SuppressWarnings("rawtypes")
	public static void main(String[] args) throws OgnlException {
		OgnlBean bean = new OgnlBean();
		
		OgnlContext context = new OgnlContext();
		context.put("bean", bean);
		/**
		 * 
		 */
		System.out.println(Ognl.getValue("'Hello!'", context));
		System.out.println(Ognl.getValue("'A'", context));
		System.out.println(Ognl.getValue("88", context));
		System.out.println(Ognl.getValue("true", context));
		System.out.println(Ognl.getValue("null", context));
		/**
		 * 
		 */
		System.out.println(Ognl.getValue("#name='zhangsan'", context));
		/**
		 * 
		 */
		System.out.println(Ognl.getValue("bean.property", context));
		/**
		 * 
		 */
		System.out.println(Ognl.getValue("bean.method()", context));
		/**
		 * 
		 */
		System.out.println(Ognl.getValue("@com.ddb.struts2.ognl.OgnlBean@staticProperty", context));
		System.out.println(Ognl.getValue("@com.ddb.struts2.ognl.OgnlBean@staticMethod()", context));
		/**
		 * 
		 */
		System.out.println(Ognl.getValue("(new java.lang.String(\"Instance a new object!\")).toString()", context));
		/**
		 * 获取Bean中数组的元素
		 */
		System.out.println(Ognl.getValue("bean.getArray()[0]", context));
		System.out.println(Ognl.getValue("bean.array[0]", context));
		/**
		 * List
		 */
		System.out.println(Ognl.getValue("bean.getList()[0]", context));
		System.out.println(Ognl.getValue("bean.list[0]", context));
		/**
		 * Map
		 */
		System.out.println(Ognl.getValue("bean.getMap()['home']", context));
		System.out.println(Ognl.getValue("bean.map['home']", context));
		System.out.println(Ognl.getValue("bean.getMap().office", context));
		System.out.println(Ognl.getValue("bean.map.office", context));
		
		/**
		 * 数组
		 */
		int[] array= (int[])Ognl.getValue("new int[]{0,1,2,3,4,5}", context);
		System.out.println(Arrays.toString(array));
		/**
		 * List
		 */
		List list= (List)Ognl.getValue("{0,1,2,3,4,5}", context);
		System.out.println(list);
		/**
		 * Map
		 */
		Map map= (Map)Ognl.getValue("#{'key1':'value1','key2':'value2','key3':'value3'}", context);
		System.out.println(map);
		/**
		 * 放置List
		 */
		List<Teacher> teacherList=new ArrayList<Teacher>();
		teacherList.add(new Teacher("Jack1",2000));
		teacherList.add(new Teacher("Jack2",2200));
		teacherList.add(new Teacher("Jack3",2400));
		teacherList.add(new Teacher("Jack4",2600));
		teacherList.add(new Teacher("Jack5",2800));
		teacherList.add(new Teacher("Jack6",3000));
		context.put("teacherList", teacherList);
		//
		System.out.println(Ognl.getValue("teacherList.{name}", context));
		System.out.println(Ognl.getValue("teacherList.{#this.name.toUpperCase()}", context));
		System.out.println(Ognl.getValue("teacherList.{#this.salary>2500?#this.salary:#this.salary+99}", context));
		//
		System.out.println(Ognl.getValue("teacherList.{?#this.salary>2500}", context));
		System.out.println(Ognl.getValue("teacherList.{?#this.salary>2500}[0]", context));
		System.out.println(Ognl.getValue("teacherList.{^#this.salary>2500}", context));
		System.out.println(Ognl.getValue("teacherList.{$#this.salary>2500}", context));
	}

}
