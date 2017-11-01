<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/bootstrap/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/sign.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/bootstrap/dist/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/bootstrap/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/OpenLayers.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/zdclient.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/InitMap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/selectChange.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测站管理</title>
</head>
<body>
<jsp:include page="Navbar.jsp"></jsp:include>
<jsp:include page="MeasureStationListGroup.jsp"></jsp:include>
  
</body>
</html>