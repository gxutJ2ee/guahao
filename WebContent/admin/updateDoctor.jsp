<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=path%>/css/z_style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="<%=path%>/js/checkform.js">
	
</script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">
	<iframe src="<%=path%>/admin/top.jsp" frameborder="0" marginheight="0"
		marginwidth="0" width="100%" height="50" scrolling="no"></iframe>
	<h3>
		<font size="3" color="#CC0000">修改医生信息</font>
	</h3>
	<form action="<%=path%>/doctor/updateDoctor" method="post" name="form1"
		onSubmit="return teamform()">
		<table width="100%" border="0" cellpadding="1" cellspacing="1"
			class="inputbox">
			<tr>
				<td width="4%" class="inputHeader">&nbsp;</td>
				<td width="11%" class="inputHeader">医生姓名：</td>
				<td width="40%" class="inputContent"><input type="Text"
					class="text width100" name="name" onFocus="nextfield='password'"
					value="${map.name}" maxlength="25"> <input type="hidden"
					class="text width100" name="id" onFocus="nextfield='password'"
					value="${map.id}" maxlength="25"></td>
				<td width="45%" class="inputContent">&nbsp;<font
					color="#CC0000"></font></td>
			</tr>
			<tr>
				<td class="inputHeader">&nbsp;</td>
				<td class="inputContent">&nbsp;</td>
			</tr>
			<tr>
				<td class="inputHeader">&nbsp;</td>
				<td width="11%" class="inputHeader">科室：</td>
				<td width="40%" class="inputContent"><select name="type">
						<option>${map.type}</option>
						<option>妇产科</option>
						<option>外科</option>
						<option>内科</option>
						<option>儿科</option>
						<option>皮肤性病科</option>
						<option>骨科</option>
						<option>耳鼻喉头颈科</option>
				</select></td>
				<td width="45%" class="inputContent">&nbsp;<font
					color="#CC0000"></font></td>
			</tr>
			<tr>
				<td class="inputHeader">&nbsp;</td>
				<td width="11%" class="inputHeader">头衔：</td>
				<td width="40%" class="inputContent"><select name="title">
						<option>${map.title}</option>
						<option>正教授</option>
						<option>副教授</option>
						<option>专家</option>
						<option>医生</option>
						<option>特需号A</option>
						<option>特需号</option>
						<option>主治医师</option>
				</select></td>
				<td width="45%" class="inputContent">&nbsp;<font
					color="#CC0000"></font></td>
			</tr>
			<tr>
				<td width="4%" class="inputHeader">&nbsp;</td>
				<td width="11%" class="inputHeader">联系方式：</td>
				<td width="40%" class="inputContent"><input type="Text"
					class="text width100" name="phone" onFocus="nextfield='password'"
					value="${map.phone}" maxlength="25"></td>
				<td width="45%" class="inputContent">&nbsp;<font
					color="#CC0000"></font></td>
			</tr>
			<tr>
				<td class="inputHeader">&nbsp;</td>

				<td class="inputContent">&nbsp;</td>
			</tr>
			<tr>
				<td width="4%" class="inputHeader">&nbsp;</td>
				<td width="11%" class="inputHeader">号价：</td>
				<td width="40%" class="inputContent"><input type="Text"
					class="text width100" name="price" onFocus="nextfield='password'"
					value="${map.price}" maxlength="25"></td>
				<td width="45%" class="inputContent">&nbsp;<font
					color="#CC0000"></font></td>
			</tr>
			<tr>
				<td class="inputHeader">&nbsp;</td>

				<td class="inputContent">&nbsp;</td>
			</tr>
			<tr>
				<td class="inputHeader">&nbsp;</td>
				<td class="inputHeader">医生简介：</td>
				<td class="inputContent"><textarea name="introduction" rows="6"
						cols="50">${map.introduction}</textarea></td>
				<td class="inputContent">&nbsp;</td>
			</tr>
			<tr>
				<td class="inputHeader">&nbsp;</td>

				<td class="inputContent">&nbsp;</td>
			</tr>
			<tr>
				<td class="inputHeader">&nbsp;</td>
				<td class="inputHeader">&nbsp;</td>
				<td class="inputContent">&nbsp;</td>
				<td class="inputContent">&nbsp;</td>
			</tr>
			<tr>
				<td width="4%" class="inputHeader">&nbsp;</td>
				<td width="11%" class="inputHeader"></td>
				<td width="40%" class="inputContent"><input type="submit"
					class="bt2" name="button2" value="修改">&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					type="Reset" class="bt2" name="button1" value="重填"
					onClick="clear()"></td>
				<td width="45%" class="inputContent">&nbsp;</td>

			</tr>
			<tr>
				<td class="inputHeader">&nbsp;</td>
				<td class="inputHeader">&nbsp;</td>
				<td class="inputContent">&nbsp;</td>
				<td class="inputContent">&nbsp;</td>
			</tr>
			<tr>
				<td class="inputHeader">&nbsp;</td>
				<td class="inputHeader">&nbsp;</td>
				<td class="inputContent">&nbsp;</td>
				<td class="inputContent">&nbsp;</td>
			</tr>
		</table>
	</form>
</body>
</html>
