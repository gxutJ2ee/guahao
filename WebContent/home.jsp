<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>医院网上挂号系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="<%=path%>/js/checkform.js"></script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">
	<iframe src="<%=path%>/top2.jsp" frameborder="0" marginheight="0"
		marginwidth="0" width="100%" height="20%" scrolling="no"></iframe>
	<form action="<%=path%>/doctor/select" method="post" name="form1"
		onSubmit="return checkuser()">
		<input type="text" name="infor" size="50"
			onfocus="if(value=='请输入医生姓名、疾病、科室') {value=''}"
			onblur="if (value=='') {value='请输入医生姓名、疾病、科室'}"
			style="color: #666; width: 300px; height: 25px" /> <input
			type="submit" value="点击查询">&nbsp;&nbsp;&nbsp; <a
			href="<%=path%>/doctor/allDoctor">全部医生信息</a>
	</form>
	<%-- <table width="100%" border="0" cellpadding="2" cellspacing="1"
		class="inputTable">
		<tr>
			<td class="inputHeader">
				<table width="100%" border="0" cellpadding="0" cellspacing="1"
					class="inputbox">
					<tr>
						<td width="15%" align="center" class="inputHeader">医生姓名</td>
						<td width="15%" align="center" class="inputContent">科室</td>
						<td width="15%" align="center" class="inputContent">专长</td>
						<td width="15%" align="center" class="inputContent">头衔</td>
						<td width="15%" align="center" class="inputContent">性别</td>
						<td width="10%" align="center" class="inputContent">价格</td>
						<td width="15%" align="center" class="inputContent">操作</td>
					</tr>
					<c:forEach items="${list}" var="list">
						<tr>
							<td width="15%" align="center" class="inputHeader"><a
								href="<%=path %>/doctor/infor?id=${list.id}" target="_blank">${list.name }</a></td>
							<td width="15%" align="center" class="inputContent">${list.type}</td>
							<td width="15%" align="center" class="inputContent">${list.specialty}</td>
							<td width="15%" align="center" class="inputContent">${list.title}</td>
							<td width="15%" align="center" class="inputContent">${list.sex}</td>
							<td width="10%" align="center" class="inputContent">￥：${list.price}</td>
							<td width="15%" align="center" class="inputContent"><a
								href="<%=path %>/doctor/order?id=${list.id}">预约</a></td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
	</table> --%>
	<div id="catLeft" style="float: left; width: 15%;">
		<s:action name="showCatByDisease" namespace="/doctor"
			executeResult="true">
		</s:action>

	</div>
	<div id="main" style="float: left; width: 70%;">
		<c:forEach items="${list}" var="list">
			<div
				style="margin: 10px 10px 10px 10px; padding: 0px; float: left; width: 300; height: 250;">
				<div
					style="margin: 0 auto; padding: 0px; float: left; width: 150; height: 250;">
					<img alt="" src="<%=path%>/picture/default.PNG">
				</div>
				<div
					style="margin: 0 auto; padding: 0px; float: left; width: 140; height: 250;">
					<table>
						<tr>
							<td>&nbsp;<a href="<%=path %>/doctor/infor?id=${list.id}"
								target="_blank">${list.name }</a></td>
							<td>&nbsp;${list.title}</td>
						</tr>
						<tr>
							<td>&nbsp;${list.type}</td>
							<td>&nbsp;${list.specialty}</td>
						</tr>
						<tr>
							<td>&nbsp;${list.sex}</td>
							<td></td>
						</tr>
						<tr>
							<td>&nbsp;￥：${list.price}</td>
							<td></td>
						</tr>
						<tr>
							<td>&nbsp;<a href="<%=path %>/doctor/order?id=${list.id}">预约</a></td>
							<td></td>
						</tr>
					</table>
					<textarea cols="15" rows="4"> ${list.introduction}</textarea>
				</div>
			</div>
		</c:forEach>
	</div>
	<div id="right"
		style="/* border: 1px solid black;  */float: right; width: 15%;">
		<s:action name="showCatByDisease" namespace="/doctor"
			executeResult="true">
		</s:action>
	</div>
	<iframe src="<%=path%>/foot.jsp" frameborder="0" marginheight="0"
		marginwidth="0" width="100%" height="150px" scrolling="no"
		style="border: 1px #69f solid;"></iframe>
</body>
</html>
