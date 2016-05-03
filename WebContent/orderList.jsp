<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	Object name = session.getAttribute("name");
	if(name == null||name.equals("")){
		response.sendRedirect(path+"/login.jsp");
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>医院网上挂号系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="<%=path%>/js/checkform.js"></script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="<%=path%>/top2.jsp" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="20%" scrolling="no"></iframe>
<table width="70%" border="0" cellpadding="0" cellspacing="0" class="main" style="margin: 0 auto">
<tr valign="top">
<td><form action="select" method="post" name="form1" onSubmit="return checkuser()">
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
    <tr>
      <td align="center">你的挂号清单</td>
    </tr>
    <tr>
      <td class="inputHeader">
	   <table width="100%" border="0" cellpadding="0" cellspacing="1" class="inputbox">
          <tr>
            <td width="25%" align="center" class="inputHeader">医生姓名</td>
            <td width="23%" align="center" class="inputContent">科室</td>
             <td width="25%" align="center" class="inputContent">时间</td>
             <td width="10%" align="center" class="inputContent">挂号费</td>
            <td width="10%" align="center" class="inputContent">操作</td>        
          </tr>
          <c:forEach items="${list}" var="list">
		     <tr>
            <td width="25%" align="center" class="inputHeader">${list.name}</td>
            <td width="23%" align="center" class="inputContent">${list.type}</td>
              <td width="25%" align="center" class="inputContent">${list.time}</td>
               <td width="10%" align="center" class="inputContent">${list.price}</td>
            <td width="10%" align="center" class="inputContent"><a href="<%=path%>/order/cancel?id=${list.id}">取消</a></td>        
          </tr>  
          </c:forEach>
        </table>
	  </td>
    </tr>
  </table>
  </form>  
</td>
</tr>
</table>
</body>
</html>
