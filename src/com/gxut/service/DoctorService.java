package com.gxut.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.gxut.util.jdbcutil.JDBConnection;

public class DoctorService {

	public List select(String infor) {
		List list = JDBConnection.queryForList("select *from doctor where name=? or type=? or specialty=?",
				new String[] { infor, infor, infor });
		return list;
	}

	public Map selectId(String id) {
		Map map = null;
		try {
			map = JDBConnection.queryForMap("select *from doctor where id=?", new String[] { id });
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}

	public boolean deleteDoctor(String id) {
		if (JDBConnection.update("delete from doctor where id=?", new String[] { id }))
			return true;
		else
			return false;
	}

	public List selectDoctor() {
		List list = JDBConnection.queryForList("select *from doctor order by type,name desc", null);
		return list;
	}

	public boolean addDoctor(String name, String type, String age, String sex, String title, String address,
			String specialty, String phone, String introduction, String price) {
		if (JDBConnection.update(
				"insert into doctor(name,type,age,sex,title,address,specialty,phone,introduction,price) values (?,?,?,?,?,?,?,?,?,?)",
				new String[] { name, type, age, sex, title, address, specialty, phone, introduction, price })) {
			System.out.println("success");
			return true;
		}

		return false;
	}

	public boolean updateDoctor(String name, String type, String title, String phone, String introduction, String id,
			String price) {
		if (JDBConnection.update("update doctor set name=?,type=?,title=?,phone=?,introduction=?,price=? where id=?",
				new String[] { name, type, title, phone, introduction, price, id }))
			return true;
		else
			return false;
	}

	public List selectDisease(String infor) {
		List listD = JDBConnection.queryForList("select * from diseases where id=?", new String[] { infor });
		List list = select((String) ((Map) listD.get(0)).get("type"));
		return list;
	}

	public List diseaseCat() {
		String[] types = { "内科", "外科", "妇产科", "皮肤性病科", "骨科", "耳鼻喉头颈科" };
		List list = new ArrayList<>();
		List listD=null;
		for(int i=0;i<types.length;i++){
			listD = JDBConnection.queryList("select * from diseases where type=?",types[i]);
			list.add(listD);
		}
		return list;
	}

}
