package com.gxut.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.gxut.service.DoctorService;
import com.opensymphony.xwork2.ActionSupport;

public class DoctorAction extends ActionSupport {
	private List catList;

	public List getCatList() {
		return catList;
	}

	public void setCatList(List catList) {
		this.catList = catList;
	}

	private List list;
	private String id;
	private Map map;
	private String name;
	private String type;
	private String age;
	private String sex;
	private String title;
	private String address;
	private String specialty;
	private String phone;
	private String introduction;
	private String infor;
	private int price;

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getInfor() {
		return infor;
	}

	public void setInfor(String infor) {
		this.infor = infor;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public Map getMap() {
		return map;
	}

	public void setMap(Map map) {
		this.map = map;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public String allDoctor() {
		DoctorService doctor = new DoctorService();
		setList(doctor.selectDoctor());
		return "success";
	}

	public String doctorShow() {
		DoctorService doctor = new DoctorService();
		setList(doctor.selectDoctor());
		return "success";
	}

	public String deleteDoctor() {
		DoctorService doctor = new DoctorService();
		if (doctor.deleteDoctor(id)) {
			setList(doctor.selectDoctor());
			return "success";
		} else {
			return "failure";
		}

	}

	public String editDoctor() {
		DoctorService doctor = new DoctorService();
		setMap(doctor.selectId(id));
		return "success";
	}

	public String order() {
		DoctorService doctor = new DoctorService();
		setMap(doctor.selectId(id));
		return "success";
	}

	public String infor() {
		DoctorService doctor = new DoctorService();
		setMap(doctor.selectId(id));
		return "success";
	}

	public String addDoctor() {
		DoctorService doctor = new DoctorService();
		if (doctor.addDoctor(name, type, age, sex, title, address, specialty, phone, introduction,
				Integer.toString(price))) {
			return "success";
		} else {
			return "failure";
		}

	}

	public String updateDoctor() {
		DoctorService doctor = new DoctorService();
		if (doctor.updateDoctor(name, type, title, phone, introduction, id, Integer.toString(price))) {
			return "success";
		} else {
			return "failure";
		}
	}

	public String selectDisease() {
		DoctorService doctor = new DoctorService();
		List lists = doctor.selectDisease(infor);
		if (lists != null && lists.size() != 0) {
			setList(lists);
			return "success";
		} else {
			return "failure";
		}

	}

	public String select() {
		DoctorService doctor = new DoctorService();
		List lists = doctor.select(infor);
		if (lists != null && lists.size() != 0) {
			setList(lists);
			return "success";
		} else {
			return "failure";
		}

	}

	public String showCatByDisease() {
		DoctorService doctor = new DoctorService();
		List lists = doctor.diseaseCat();
		if (lists != null && lists.size() != 0) {
			setCatList(lists);
			return "success";
		} else {
			return "failure";
		}

	}
}
