<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	Object adminName = session.getAttribute("adminName");
	if(adminName == null||adminName.equals("")){
		response.sendRedirect(path+"/admin");
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
	<table width="100%" border="1" cellpadding="1" cellspacing="1"
		class="main">
		<tr align="center">
			<td class="inputTitle"><font size="5" color="black">&nbsp;&nbsp;添加医生信息</font></td>
		</tr>
		<tr>
			<td>
				<form action="<%=path%>/doctor/addDoctor" method="post" name="form1"
					onSubmit="return teamform()">
					<table width="80%" border="0" cellpadding="1" cellspacing="1"
						class="inputbox" style="margin: auto;">
						<tr>
							<td width="20%" class="inputHeader">&nbsp;</td>
							<td width="10%" class="inputHeader">医生姓名：</td>
							<td width="40%" class="inputContent"><input type="Text"
								class="text width100" name="name" onFocus="nextfield='password'"
								maxlength="25"></td>
							<td width="20%" class="inputContent">&nbsp;<font
								color="#CC0000">不可为空</font></td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>
							<td class="inputContent">&nbsp;</td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>
							<td width="11%" class="inputHeader">科室：</td>
							<td width="40%" class="inputContent"><select name="type">
									<option value="选择">- - - - 请选择一种科室- - - -</option>
									<option>妇产科</option>
									<option>外科</option>
									<option>内科</option>
									<option>儿科</option>
									<option>皮肤性病科</option>
									<option>骨科</option>
									<option>耳鼻喉头颈科</option>
							</select></td>
							<td width="45%" class="inputContent">&nbsp;<font
								color="#CC0000">不可为空</font></td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>
							<td class="inputContent">&nbsp;</td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>
							<td width="11%" class="inputHeader">性别：</td>
							<td width="40%" class="inputContent"><select name="sex">
									<option value="选择">- - - - - - - -</option>
									<option>男</option>
									<option>女</option>
							</select></td>
							<td width="45%" class="inputContent">&nbsp;<font
								color="#CC0000">可为空</font></td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>
							<td class="inputContent">&nbsp;</td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>
							<td width="11%" class="inputHeader">头衔：</td>
							<td width="40%" class="inputContent"><select name="title">
									<option value="选择">- - - - - - - -</option>
									<option>正教授</option>
									<option>副教授</option>
									<option>专家</option>
									<option>医生</option>
									<option>特需号A</option>
									<option>特需号</option>
									<option>主治医师</option>
							</select></td>
							<td width="45%" class="inputContent">&nbsp;<font
								color="#CC0000">不可为空</font></td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>
							<td class="inputContent">&nbsp;</td>
						</tr>
						<tr>
						<tr>
							<td width="4%" class="inputHeader">&nbsp;</td>
							<td width="11%" class="inputHeader">联系方式：</td>
							<td width="40%" class="inputContent"><input type="Text"
								class="text width100" name="phone"
								onFocus="nextfield='password'" maxlength="25"></td>
							<td width="45%" class="inputContent">&nbsp;<font
								color="#CC0000">可为空</font></td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>
							<td class="inputContent">&nbsp;</td>
						</tr>
						<tr>
							<td width="4%" class="inputHeader">&nbsp;</td>
							<td width="11%" class="inputHeader">地址：</td>
							<td width="40%" class="inputContent"><input type="Text"
								class="text width100" name="address"
								onFocus="nextfield='password'" maxlength="25"></td>
							<td width="45%" class="inputContent">&nbsp;<font
								color="#CC0000">可为空</font></td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>
							<td class="inputContent">&nbsp;</td>
						</tr>
						<tr>
							<td width="4%" class="inputHeader">&nbsp;</td>
							<td width="11%" class="inputHeader">专长：</td>
							<td width="40%" class="inputContent"><input type="Text"
								class="text width100" name="specialty"
								onFocus="nextfield='password'" maxlength="25"></td>
							<td width="45%" class="inputContent">&nbsp;<font
								color="#CC0000">可为空</font></td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>
							<td class="inputContent">&nbsp;</td>
						</tr>
						<tr>
							<td width="4%" class="inputHeader">&nbsp;</td>
							<td width="11%" class="inputHeader">价格：</td>
							<td width="40%" class="inputContent"><input type="Text"
								class="text width100" name="price"
								onFocus="nextfield='password'" maxlength="25"></td>
							<td width="45%" class="inputContent">&nbsp;<font
								color="#CC0000">不可为空</font></td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>

							<td class="inputContent">&nbsp;</td>
						</tr>
						<tr>
							<td width="4%" class="inputHeader">&nbsp;</td>
							<td width="11%" class="inputHeader">年龄：</td>
							<td width="40%" class="inputContent"><input type="Text"
								class="text width100" name="age" onFocus="nextfield='password'"
								maxlength="25"></td>
							<td width="45%" class="inputContent">&nbsp;<font
								color="#CC0000">不可为空</font></td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>
							<td class="inputContent">&nbsp;</td>
						</tr>
						<tr>
							<td class="inputHeader">&nbsp;</td>
							<td class="inputHeader">医生简介：</td>
							<td class="inputContent"><textarea name="introduction"
									rows="6" cols="50"></textarea></td>
							<td class="inputContent">&nbsp;<font color="#CC0000">可为空</font></td>
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
								 name="button2" value="添加">&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
								type="Reset" name="button" value="重填"
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
			</td>
		</tr>
	</table>
</body>
</html>
