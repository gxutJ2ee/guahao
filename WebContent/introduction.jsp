<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>ҽԺ���ϹҺ�ϵͳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="<%=path%>/js/checkform.js"></script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0" style="height: 350px; width: 629px;">
	<%
	Object name = session.getAttribute("name");
	if(name == null||name.equals("")){
		
	}else{
	
%>
<iframe src="<%=path %>/top2.jsp" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="20%" scrolling="no"></iframe>
<%
	
		
	}
%>
	<table width="70%" border="0" cellpadding="0" cellspacing="0"
		class="main" style="width: 921px;">
		<tr valign="top">
		</tr>
	</table>
	<form action="<%=path%>/doctor/select" method="post" name="form1"
		onSubmit="return checkuser()">
		<table width="90%" border="0" cellpadding="2" cellspacing="1"
			class="inputTable">
			<tr>
				<td align="center">
					<table width="100%" border="0" cellpadding="0" cellspacing="1"
						class="inputbox">
						<tr>
							<th width="15%" align="center" class="inputHeader">ҽ����</th>
							<td width="20%" align="left" class="inputContent">${map.name}</td>
							<th width="15%" align="center" class="inputHeader">�Ա�</th>
							<td width="20%" align="left" class="inputContent">${map.sex}</td>
						</tr>

						<tr>
							<th width="15%" align="center" class="inputHeader">���ң�</th>
							<td width="20%" align="left" class="inputContent">${map.type}</td>
							<th width="15%" align="center" class="inputHeader">�绰��</th>
							<td width="20%" align="left" class="inputContent">${map.phone}</td>
						</tr>
						<tr>
							<td width="15%" align="center" class="inputHeader"></td>
							<td width="20%" align="left" class="inputContent"></td>

						</tr>
						<tr>
						</tr>
						<tr>
							<th width="15%" align="center" class="inputHeader">���䣺</th>
							<td width="20%" align="left" class="inputContent">${map.age }</td>
							<th width="15%" align="center" class="inputHeader">�س���</th>
							<td width="20%" align="left" class="inputContent">${map.specialty }</td>
						</tr>
						<tr>
							<td width="20%" align="center" class="inputHeader"></td>
							<td width="20%" align="center" class="inputContent"></td>
						</tr>
						<tr>
						</tr>
						<tr>

							<th width="15%" align="center" class="inputHeader">��ַ��</th>
							<td width="20%" align="left" class="inputContent">${map.address}</td>
							<th width="15%" align="center" class="inputHeader">ͷ�Σ�</th>
							<td width="20%" align="left" class="inputContent">${map.title}</td>

						</tr>
						<tr></tr>

						<tr>
							<th width="30%" align="center" class="inputHeader">��飺</th>
							<td width="30%" align="left" class="inputContent">${map.introduction }</td>
						</tr>

					</table>
			<tr>
				<td class="inputHeader"></td>
			</tr>

		</table>
	</form>
</body>
</html>
