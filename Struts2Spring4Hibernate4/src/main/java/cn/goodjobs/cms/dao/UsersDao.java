package cn.goodjobs.cms.dao;

import java.util.List;

import cn.goodjobs.cms.domain.Users;

public interface UsersDao {
	
	public Long insert(Users users);
	
	public Long update(Users users);
	
	public Long delete(Long id);
	
	public Users getUser(Long id);
	
	public List<Users> getUsersList(Users users);
	
	public int getUsersCount(Users users);
	
	public List<Users> getUsersPaginatedList(Users users, int first, int count);

}
