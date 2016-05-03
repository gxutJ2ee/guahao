<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>医院网上挂号系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js"></script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">
	<div style="font-size: 14px;">
		<div style="height: 500px;">
			<div style="height: 80px; line-height: 80px;">
				<a><img alt=""
					src="<%=request.getContextPath()%>/picture/logo.jpg"
					style="float: left; width: 155px; margin-top: 15px; border-right: solid 2px #f6f6f6; padding-right: 20px; margin-right: 20px;" /></a>
				<span style="font-size: 16px; font-weight: bold">您好，欢迎来到本院网站！</span>
			</div>
			<div id="loginModel"
				style="min-height: 415px; width: 1100px; background-color: #f6f6f6;">
				<img alt="" src="<%=request.getContextPath()%>/picture/host.jpg"
					style="float: left; margin-left: 45px; margin-top: 20px; margin-right: 100px;" />
				<div style="float: left; width: 190px; height: 300px; margin: 20px 35px 20px 0; border: solid 1px #e8e8e8; background-color: #fff;">
					<div style="font-size: 16px; height: 30px; font-weight: bold; border-bottom: solid 1px #f6f6f6; padding-bottom: 10px;">
						账号登录</div>
					<form method="post"
						action="<%=request.getContextPath()%>/login"
						id="ctl00" style="height: 100px">
						<table>
							<tr>
								<td><s:fielderror cssStyle="color:red" /> <s:property
										value="errorMsg" /></td>
							</tr>
							<tr height="20"></tr>
							<tr>
								<td><input type="text" name="name" value="用户名"
									onfocus="if(value=='用户名') {value=''}"
									onblur="if (value=='') {value='用户名'}" style="color: #666;">
								</td>
							</tr>
							<tr>
								<td><input type="text" value="密码" name="password"
									onfocus="if(this.value==defaultValue) {this.value='';this.type='password'}"
									onblur="if(!value) {value=defaultValue; this.type='text';}"
									style="color: #666;" /></td>
							</tr>
							<tr>
								<td><input type="submit" id="btnSignCheck"
									class="button_enter" value="登 录" /></td>
								<td><a href="register.jsp" style="color: #ccc;">注册</a></td>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>


</html>
