package com.ddb.spring.set;

import lombok.Getter;
import lombok.Setter;

public class UsaGirlFriend implements GirlFriend {
	@Setter@Getter
	private String language;

	@Override
	public String speak() {
		return language;
	}

}
