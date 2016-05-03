package com.gxut.web.action;

import java.io.IOException;
import java.util.Map;

import com.gxut.service.AdminService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction  extends ActionSupport{

	private String name;
	private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String execute(){
		return "success";
	}
	public String login() throws IOException{
		AdminService admin = new AdminService();
		// 管理员登陆
		if (admin.equalsAdmin(name, password)) {
			ActionContext context=ActionContext.getContext();
			Map<String,Object> session=context.getSession();
			session.put("adminName", name);
			return "success";
		} else {
			return "failure";
		}
		
	}
	public String exit() {
		ActionContext context=ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		session.clear();
		return "success";
	}
}
