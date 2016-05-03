package com.gxut.service;

import java.util.List;

import com.gxut.util.jdbcutil.JDBConnection;

public class OrderService {

	public boolean addOrder(String name, String type, String time, String doctorName, String price) {
		if (JDBConnection.update("insert into orders(name,doctorName,type,price,time) values (?,?,?,?,?)",
				new String[] { name, doctorName, type, price,time  }))
			return true;
		else

			return false;
	}

	public List selectOrder(String name) {
		List list = JDBConnection.queryForList("select *from orders where name=?", new String[] { name });
		return list;
	}

	public boolean cancel(String id) {
		if (JDBConnection.update("delete from orders where id=?", new String[] { id }))
			return true;
		else
			return false;
	}

	public List getOrder() {
		List list = JDBConnection.queryForList("select *from orders", null);
		return list;
	}

}
