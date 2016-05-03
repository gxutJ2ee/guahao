<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	Object adminName = session.getAttribute("adminName");
	if (adminName == null || adminName.equals("")) {
		response.sendRedirect(path + "/admin");
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>医院挂号网</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=path%>/css/z_style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="<%=path%>/js/checkform.js">
	
</script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">
	<iframe src="<%=path%>/admin/top.jsp" frameborder="0" marginheight="0"
		marginwidth="0" width="100%" height="50" scrolling="no"></iframe>
	<h3>
		<font size="3" color="#CC0000">医生信息列表</font>
	</h3>
	<table width="100%" border="0" cellpadding="0" cellspacing="1"
		class="inputbox">
		<tr>
			<td width="10%" align="center" class="inputHeader">姓名</td>
			<td width="10%" align="center" class="inputHeader">科室</td>
			<td width="10%" align="center" class="inputHeader">年龄</td>
			<td width="10%" align="center" class="inputHeader">性别</td>
			<td width="10%" align="center" class="inputHeader">特长</td>
			<td width="10%" align="center" class="inputHeader">地址</td>
			<td width="10%" align="center" class="inputHeader">头衔</td>
			<td width="20%" align="center" class="inputHeader">联系方式</td>
			<td width="10%" align="center" class="inputContent">操作</td>
		</tr>
		<c:forEach items="${list}" var="list">
			<tr>
				<td width="10%" align="center" class="inputHeader">${list.name}</td>
				<td width="10%" align="center" class="inputHeader">${list.type}</td>
				<td width="10%" align="center" class="inputHeader">${list.age}</td>
				<td width="10%" align="center" class="inputHeader">${list.sex}</td>
				<td width="10%" align="center" class="inputHeader">${list.specialty}</td>
				<td width="10%" align="center" class="inputHeader">${list.address}</td>
				<td width="10%" align="center" class="inputHeader">${list.title}</td>
				<td width="20%" align="center" class="inputHeader">${list.phone}</td>
				<td width="10%" align="center" class="inputContent"><p>
						<input type="button" height="17" value="修改"
							onclick="window.location.href='<%=path%>/doctor/editDoctor?id=${list.id}'" />
						<input type="button" height="17" value="删除"
							onclick="window.location.href='<%=path%>/doctor/deleteDoctor?id=${list.id}'" />
					</p></td>
			</tr>
			<tr></tr>
		</c:forEach>
	</table>
	<input type="button" value="添加"
		onclick="window.location.href='<%=path%>/admin/addDoctor.jsp'" />
</body>
</html>
