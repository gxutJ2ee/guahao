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
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<style type="text/css">
ul,li {margin:0;padding:0;} 
</style>
</head>
<body>
  <div style="text-align:center;">
    <dl>	
    		<dt></dt>
    		<dd><img alt="" src="<%=path %>/picture/footLogo.jpg"  width="60px" height="60px"></dd>
			
	</dl>
		<p>Copyright © 2016-9999 XX网 XX.com 版权所有 </p>
       </div>
</body>
</html>
