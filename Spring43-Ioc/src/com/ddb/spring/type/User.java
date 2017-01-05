package com.ddb.spring.type;

import lombok.Getter;
import lombok.Setter;

@Setter @Getter 
public class User {
	private String username;
	//使用lombok生成get和set方法

	@Override
	public String toString() {
		return "User [username=" + username + "]";
	}
	
}
