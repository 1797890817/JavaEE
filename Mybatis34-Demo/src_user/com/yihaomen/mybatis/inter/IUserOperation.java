package com.yihaomen.mybatis.inter;

import java.util.List;

import com.yihaomen.mybatis.model.User;

public interface IUserOperation {
	public void addUser(User user);
	
	public void updateUser(User user);
	
	public void deleteUser(int id);
	
	public List<User> selectUsers(String userName);   
	
	public User selectUserByID(int id);

}