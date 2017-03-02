package com.yue.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.yue.entity.User;


public interface UserDao extends PagingAndSortingRepository<User, Long> {

	public List<User> findByUsername(String username);
	
	public List<User> findByPassword(String password);
	
	@Query(value = "SELECT * FROM mxy_user WHERE id = ?1", nativeQuery = true)
	public User findById(long id);
}
