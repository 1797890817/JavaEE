package com.ddb.spring.auto;

import org.springframework.stereotype.Component;

/**
 * Component 代表一种组件
 * @author win
 *
 */
//@Service("usaGirlFriend")
//@Controller("usaGirlFriend")
//@Repository("usaGirlFriend")
@Component("usaGirlFriend")
public class UsaGirlFriend {
	public String speak() {
		return "english";
	}

}
