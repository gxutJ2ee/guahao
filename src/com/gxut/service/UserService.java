package com.gxut.service;

import java.util.List;
import java.util.Map;

import com.gxut.util.jdbcutil.JDBConnection;


public class UserService {

	// 删除用户信息方法
	public boolean deleteUser(String tId) {
		if (JDBConnection.update("delete from users where id=?",
				new String[] { tId }))
			return true;
		else
			return false;
	}

	// 获取所有用户信息方法
	public List getUser() {
		List list = JDBConnection.queryForList("select *from users", null);
		return list;
	}

	// 用户登陆信息方法
	public boolean login(String username, String password) {
		try {
			Map map = JDBConnection.queryForMap(
					"select * from users where name=? and password=?",
					new String[] { username, password });
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	// 用户注册信息方法
	public boolean addUser(String name, String password, String phone,
			String address) {
		String sql = "insert into users(name,password,phone,address)values(?,?,?,?)";
		if (JDBConnection.update(sql, new String[] { name, password, phone,
				address }))
			return true;
		else
			return false;
	}

}
