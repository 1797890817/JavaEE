package com.ddb.spring.jdbc;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class Test {
	private static final Logger logger = Logger.getLogger(Test.class);

	private JdbcTemplate jdbcTemplate;

	public void init() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		this.jdbcTemplate = ctx.getBean("jdbcTemplate", JdbcTemplate.class);
	}

	public int insert(Users users) {
		String sql = "insert into users (name,pass) values('" + users.getName() + "','" + users.getPass() + "')";
		int count = this.jdbcTemplate.update(sql);
		return count;
	}

	public int update(Users users) {
		String sql = "update users set name=?, pass=? where id=?";
		int count = this.jdbcTemplate.update(sql, users.getName(), users.getPass(), users.getId());
		return count;
	}

	public int delete(Long id) {
		String sql = "delete from users where id = ?";
		int count = this.jdbcTemplate.update(sql, id);
		return count;
	}

	public Users getOne(Long id) {
		String sql = "select * from users where id = " + id;
		Users users = this.jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<Users>(Users.class));
		return users;
	}

	public Long getCount(String name) {
		String sql = "select count(*) from users where name = ?";
		return this.jdbcTemplate.queryForLong(sql, name);
	}

	public List<Users> getUsersList() {
		String sql = "select * from users";
		List<Users> usersList = this.jdbcTemplate.query(sql, new BeanPropertyRowMapper<Users>(Users.class));
		return usersList;
	}

	public List<Users> getUsersList(Users users) {
		String sql = "select * from users where 1=1 and name= ? and pass = ?";
		List<Users> usersList = this.jdbcTemplate.query(sql, new Object[] { users.getName(), users.getPass() },
				new BeanPropertyRowMapper<Users>(Users.class));
		return usersList;
	}

	public static void main(String[] args) {
		Test test = new Test();
		test.init();
		Users users = new Users();
//		users.setId(2L);
		users.setName("lisi");
		users.setPass("666666");
		//logger.info(test.insert(users));
		//logger.info(test.update(users));
		//Users users = test.getOne(1L);
		//logger.info(users);
//		List<Users> usersList = test.getUsersList();
//		logger.info(usersList);
//		List<Users> usersList = test.getUsersList(users);
//		logger.info(usersList);
		
		/*logger.info(test.getCount("zhangsan"));
		List<Users> usersList = test.getUsersList(users);
		logger.info(usersList.size());
		for(Users users2 : usersList){
			logger.info(users2);
		}*/
		
		logger.info(test.delete(2L));
		
	}

}
