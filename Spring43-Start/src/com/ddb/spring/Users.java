package com.ddb.spring;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Users {
	// 定义name、address、memo属性，属性的值将通过Spring框架进行设置
	private String name;
	private String address;
	private String memo;
	// set,get 方法由lombok生成

	@Override
	public String toString() {
		return "Users [name=" + name + ", address=" + address + ", memo=" + memo + "]";
	}
}
