package com.gxut.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.gxut.service.OrderService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport {
	private List list;
	private String id;
	private String name;
	private String doctorName;
	private String type;
	private String time;
	private int price;
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
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

	public String orderList() {
		OrderService order = new OrderService();
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		String name = (String) session.get("name");
		List list = order.selectOrder(name);
		setList(list);
		return "success";
	}

	public String deleteOrder() throws IOException {
		OrderService order = new OrderService();
		if (order.cancel(id)) {
			setList(order.getOrder());
			return "success";
		} else {
			return "failure";
		}

	}

	public String orderShow() {
		OrderService order = new OrderService();
		setList(order.getOrder());
		return "success";
	}

	public String cancel() throws IOException {
		OrderService order = new OrderService();
		if (order.cancel(id)) {
			ActionContext context = ActionContext.getContext();
			Map<String, Object> session = context.getSession();
			String name = (String) session.get("name");
			setList(order.selectOrder(name));
			return "success";
		} else {
			return "failure";
		}
	}

	public String  order() throws IOException {
		OrderService order = new OrderService();
		if (order.addOrder(name, type, time, doctorName,Integer.toString(price))) {
			return "success";
		} else {
			return "failure";
		}

	}

}
