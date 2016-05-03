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
		<font size="3" color="#CC0000">挂号信息列表</font>
	</h3>
	<form action="" method="post" enctype="multipart/form-data"
					name="form1">
					<table width="100%" border="0" cellpadding="2" cellspacing="1"
						class="inputTable">
						<tr>
							<td class="inputHeader"><table width="100%" border="0"
									cellpadding="0" cellspacing="1" class="inputbox">
									<tr>
										<td width="13%" align="center" class="inputHeader">医生姓名</td>
										<td width="13%" align="center" class="inputHeader">病人姓名</td>
										<td width="22%" align="center" class="inputHeader">科室</td>
										<td width="22%" align="center" class="inputHeader">时间</td>
										<td width="12%" align="center" class="inputContent">操作</td>
									</tr>
									<c:forEach items="${list}" var="list">
										<tr>
											<td width="13%" align="center" class="inputHeader">${list.doctorname}</td>
											<td width="13%" align="center" class="inputHeader">${list.name}</td>
											<td width="22%" align="center" class="inputHeader">${list.type}</td>
											<td width="22%" align="center" class="inputHeader">${list.time}</td>
											<td width="12%" align="center" class="inputContent"><p>
													&nbsp;&nbsp;<a
														href="<%=path%>/order/deleteOrder?id=${list.id}"
														onClick="window.confirm('确定删除？')"><img
														src="<%=path%>/picture/delete_item.gif" alt="删除"
														width="45" height="17" border="0"></a>
												</p></td>
										</tr>
									</c:forEach>
								</table></td>
						</tr>
					</table>
				</form>
</body>
</html>
