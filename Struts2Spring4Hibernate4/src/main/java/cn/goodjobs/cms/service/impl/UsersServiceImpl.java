package cn.goodjobs.cms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.goodjobs.cms.dao.UsersDao;
import cn.goodjobs.cms.domain.Users;
import cn.goodjobs.cms.service.UsersService;

@Service
public class UsersServiceImpl implements UsersService {
	
	@Autowired
	private UsersDao usersDao;
	
	//@Override
	public Long createUsers(Users users){
		Long id =  usersDao.insert(users);
		return id;
	}

	//@Override
	public Long modifyUsers(Users users){
		return usersDao.update(users);
	}

	//@Override
	public Long removeUsers(Long id){
		return usersDao.delete(id);
	}

	//@Override
	public Users getUsers(Long id){
		return usersDao.getUser(id);
	}

	//@Override
	public List<Users> getUsersList(Users users){
		return usersDao.getUsersList(users);
	}

	//@Override
	public int getUsersCount(Users users) {
		return usersDao.getUsersCount(users);
	}

	//@Override
	public List<Users> getUsersPaginatedList(Users users, int first, int count) {
		return usersDao.getUsersPaginatedList(users, first, count);
	}
}