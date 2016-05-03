<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<%=path%>/css/z_style.css" rel="stylesheet" type="text/css">
<style type="text/css">
table {
	border: 1px;
}
</style>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		class="pagetop">
		<tr>
			<td style="width: 532px;"><img
				src="<%=path%>/picture/footLogo.jpg" width="20" height="20"></td>
			<td width="124"></td>
			<td align="right" valign="top" class="help">管理员:<%=request.getSession().getAttribute("adminName")%>|<a
				href="<%=path%>/admin/exit" target="_parent">注销</a></td>
		</tr>
	</table>
	<table width="100%" height="16" border="0" cellpadding="0"
		cellspacing="0" class="menuMain">
		<tr align="center">
			<td width="33%" class="menuLinkbg"><a
				href="<%=path%>/doctor/doctorShow" class="menuLink" target="_parent">医生信息管理</a></td>
			<td width="33%" class="menuLinkbg"><a
				href="<%=path%>/user/userShow" class="menuLink" target="_parent">用户信息管理</a></td>
			<td width="33%" class="menuLinkbg"><a
				href="<%=path%>/order/orderShow" class="menuLink" target="_parent">挂号信息管理</a></td>
			<td width="33%" align="left" class="menuLinkbg">&nbsp;</td>
		</tr>
	</table>
</body>
</html>