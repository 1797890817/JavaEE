package com.yue.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.yue.entity.User;
import com.yue.repository.UserDao;

//Spring Bean的标识.
@Component
//类中所有public函数都纳入事务管理的标识.
@Transactional
public class UserService {
	@Autowired
	private UserDao userDao;
	/**
	 * 保存用户
	 * @param user
	 */
	public void saveUser(User user){
		userDao.save(user);
	}

	public List<User> findUserByUsername(String username){
		return userDao.findByUsername(username);
	}
	
	public List<User> findUserByPassword(String password) {
		return userDao.findByPassword(password);
	}
	
	public User findUserById(long id){
		return this.userDao.findById(id);
	}

}
