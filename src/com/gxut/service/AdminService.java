package com.gxut.service;

import java.util.Map;

import com.gxut.util.jdbcutil.JDBConnection;

public class AdminService {
	// 管理员登陆判断用户名和密码正确
	public boolean equalsAdmin(String name, String password) {
		try {
			Map map=JDBConnection.queryForMap("select *from admin where name=? and password=?", new String[]{name,password});
			
		} catch (Exception e) {
			return false;
		} 
		return true;
	}

}
