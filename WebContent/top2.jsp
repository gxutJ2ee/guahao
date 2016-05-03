<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
</head>
<body>
	<div align="center">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="left"><h3>
						<a href="#"><img alt=""
							src="<%=request.getContextPath()%>/picture/logo.jpg"
							style="float: left; width: 155px; margin-top: 15px; border-right: solid 2px #f6f6f6; padding-right: 20px; margin-right: 20px;" /></a>
						<%
							Object name = session.getAttribute("name");
							if (name == null || name.equals("")) {
						%>
						<br>您好!您还未登录。
						|<a href="returnIndex" target="_parent">返回首页</a> |<a
							href="<%=path%>/userLogin" target="_parent">登录</a> |<a
							href="<%=path %>/register.jsp" target="_parent">注册</a>
						<%
							} else {
						%>
						<br>您好:<%=session.getAttribute("name")%>
						|<a href="returnIndex" target="_parent">返回首页</a> |<a
							href="<%=path%>/order/orderList" target="_parent">个人挂号信息</a> |<a
							href="exit" target="_parent">安全退出</a>
						<%
							}
						%>
					</h3></td>
			</tr>
		</table>
	</div>
</body>
</html>
