<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script>
        $(document).ready(function () {
         var location=window.location.search;
         var id =location.substring(1,4);
         $('#'+id).attr("class","active");
       
        });
    </script>
    <style type="text/css">

     body{
         margin-top:50px;
     }
    </style>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">灌区信息管理与应用系统</a>
            </div>
            <div>
                <ul class="nav navbar-nav">
                    <li id="id1" class=""><a href="${pageContext.request.contextPath }/waterDispatcher?id1">水量调度</a></li>
                    <li id="id2"><a href="${pageContext.request.contextPath }/measureStation?id2">测站管理</a></li>
                    <li id="id3"><a href="${pageContext.request.contextPath }/needWaterAnalyze?id3">需水分析</a></li>
                    <li ><a href="#">洪水预警</a></li>
                    <li><a href="#">数据管理</a></li>
                </ul>
            </div>
            <ul class="nav navbar-nav navbar-right">

                <li><a href="${pageContext.request.contextPath}/logout"><span class="glyphicon glyphicon-log-out"></span> 退出</a></li>
            </ul>
        </div>

    </nav>