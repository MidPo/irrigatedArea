<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/bootstrap/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/sign.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/bootstrap/dist/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/bootstrap/dist/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="Navbar.jsp"></jsp:include>
   <div class="container">
        <div class="jumbotron">
            <h1>欢迎登陆灌区信息管理系统！</h1>
            <p>当前用户： ${User.username} </p>
        </div>
    </div>
</body>
</html>