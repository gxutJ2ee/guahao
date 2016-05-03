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
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
ul,li {margin:0;padding:0;} 
</style>
</head>
<body>
	<h2>按疾病找医生</h2>
	<s:iterator var="list" value="catList">
		<div style="/* border:1px solid black; */ ">
			<h3>
				[<a href='<%=path%>/doctor/select?infor=<s:property value="#list.get(1).get(2)"/>'>
				<s:property value="#list.get(1).get(2)" /></a>]
			</h3>
			<ul>
				<s:iterator var="item" value="#list">
					<li><a
						href='<%=path%>/doctor/selectDisease?infor=<s:property value="#item.get(0)"/>'><s:property
								value="#item.get(1)" /></a></li>
				</s:iterator>
			</ul>
		</div>
	</s:iterator>
</body>
</html>
