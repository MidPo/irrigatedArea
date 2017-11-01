<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登陆</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/bootstrap/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/sign.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/bootstrap/dist/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/bootstrap/dist/js/bootstrap.min.js"></script>
 
</head>
<body>
    <div class="container">
    

        <form class="form-signin" action="${pageContext.request.contextPath}/LoginValidate">
         
            <p class="text-center text-info bg-info">灌区信息管理系统</p>
            <div class="input-group">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button" style="display:inline-block;height:33.99px"><span class="glyphicon glyphicon-user"></span></button>
                </span>
                <input type="text" class="form-control" name="username">
            </div>
            <br />
            <div class="input-group">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button"  style="display:inline-block;height:33.99px"> <span class="glyphicon glyphicon-lock"></span></button>
                </span>
                <input type="password" class="form-control" name="password">
            </div>
            <div class="checkbox"style="height: 20px;">
         
            <p class="text-center" style="${empty error1 ? 'display:none':'display:block'}" >
            <span class="label label-danger"> ${error1}</span>
              
            </p>
               
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        </form>

    </div>


</body>
</html>