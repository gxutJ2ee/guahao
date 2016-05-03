package com.gxut.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import com.gxut.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;



public class UserAction extends ActionSupport{
	private String name;
	private String phone;
	private String address;
	private String password;
	private String  id;
	private List list;
	private String errorMsg;
	private String verifyCode;
	public String getVerifyCode() {
		return verifyCode;
	}
	public void setVerifyCode(String verifyCode) {
		this.verifyCode = verifyCode;
	}
	public String getErrorMsg() {
		return errorMsg;
	}
	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public String execute(){
		return "success";

		
	}
	public String  deleteUser() throws IOException {
		UserService user = new UserService();
		if (user.deleteUser(id)) {
			setList(user.getUser());
			return "success";
		} else {
			return "failure";
		}
	}
	public String  userShow() {
		UserService user = new UserService();
		setList(user.getUser());
		return "success";
	}

	public String exit() {
		ActionContext context=ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		session.clear();
		return "success";
	}

	public  String register() throws IOException  {
		UserService user = new UserService();
		String text=(String)ActionContext.getContext().getSession().get("verifyCode");
		if(text==null||verifyCode==null||!verifyCode.equalsIgnoreCase(text)){
			setErrorMsg("验证码有误");
			return "failure";
		}	
		if (user.addUser(name,password, phone, address)) {
			return "success";
		} else {
			setErrorMsg("无法注册");
			return "failure";
		}
	}

	public String  updateUser() {
		return "success";
	}

	public String login() throws IOException{
		UserService user = new UserService();
		ActionContext context=ActionContext.getContext();
		Map<String,Object> session=context.getSession();
		System.out.println(name);
		if (user.login(name, password)) {
			session.put("name", name);
			return "success";
		} else {
			return "failure";
		}

	}
}
