package com.ddb.struts2.ognl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import lombok.Getter;
import lombok.Setter;

@Getter@Setter
public class OgnlBean {
	public static final String staticProperty="This is a static property!";
	
	private String property="This is a common property!";
	
	private String[] array={"Jack","Rose","Tom"};
	
	private List<String> list=new ArrayList<String>();

	private Map<String,String> map=new HashMap<String,String>();
	
	
	public OgnlBean() {
		list.add("Hefei");
		list.add("BeiJing");
		list.add("ShangHai");
		map.put("home", "111111");
		map.put("office", "222222");
		map.put("other", "333333");
	}

	public String method(){
		return "This is a common method!";
	}
	
	public static String staticMethod(){
		return "This is a static method!";
	}
}
