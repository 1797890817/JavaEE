package com.yihaomen.mybatis.inter;

import com.yihaomen.mybatis.model.User;

public interface IUserOperation {
	public User selectUserByID(int id);

}