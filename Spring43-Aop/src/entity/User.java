package entity;

import lombok.Getter;
import lombok.Setter;

@Setter@Getter
public class User {
	private Integer id;		 	//用户的ID
	private String username;	//用户名
	private String password;	//密码
	private String eamil;		//电子邮件
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", eamil=" + eamil + "]";
	}
}
