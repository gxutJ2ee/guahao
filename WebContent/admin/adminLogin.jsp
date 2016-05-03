<%@ page language="java"  pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>医院网上挂号管理系统</title>
<head>
<script language="javascript" src="../js/checkform.js">
</script>
</head>
<body vlink="#999999">
	<div  align="center">
		<table width="100%" border="0">
			<tr>
				<td>
					<center>
						<h3>医院网上挂号管理系统</h3>
					</center>
				</td>
			</tr>
		</table>
		<br>
		<form action="<%=request.getContextPath()%>/admin/login" method="post"
			name="form1" onSubmit="return checkloginform()">
			<table width="448" border="0" style="margin: auto;">
				<tr>
					<td width="104" height="49">管理员：</td>
					<td colspan="2"><input type="text" class="login_addr"
						name="name" style="width: 250px; height: 35px" /></td>
					<td width="77">&nbsp;</td>
				</tr>
				<tr>
					<td height="43">密&nbsp;&nbsp;码：</td>
					<td colspan="2"><input type="password" class="login_addr"
						name="password" style="width: 250px; height: 35px"></td>
					<td></td>
				</tr>
				<tr>
					<td height="15"></td>
					<td colspan="2"><font color="red">${msg}</font></td>
					<td></td>
				</tr>
				<tr>
					<td height="37">&nbsp;</td>
					<td width="135"><input type="submit" value="登录"
						style="width: 55px; height: 25px">&nbsp;&nbsp;<input
						type="reset" value="重置"
						style="width: 55px; height: 25px"></td>
					<td width="114">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</form>
		<s:fielderror cssStyle="color:red" /> <s:property
										value="errorMsg" />
	</div>
</body>
</html>