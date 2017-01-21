package com.yue.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="mxy_user")
public class User extends IdEntity {
	private String username;
	private String password;
	
	@NotBlank
	public String getUsername() {
		return username;
	}
	public void setUsername(String userName) {
		this.username = userName;
	}
	@NotBlank
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
