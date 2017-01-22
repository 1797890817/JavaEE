package cn.goodjobs.cms.service;

import java.util.List;

import cn.goodjobs.cms.domain.Users;

public interface UsersService {
	
	public Long createUsers(Users users);
	
	public Long modifyUsers(Users users);
	
	public Long removeUsers(Long id);
	
	public Users getUsers(Long id);
	
	public List<Users> getUsersList(Users users);	
	
	public int getUsersCount(Users users);
	
	public List<Users> getUsersPaginatedList(Users users, int first, int count);

}
