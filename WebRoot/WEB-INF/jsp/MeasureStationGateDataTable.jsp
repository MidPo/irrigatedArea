<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


  
 <table class="table table-bordered">

  <thead>
    <tr>
      <th>闸门测站编码</th>
      <th>闸群编码</th>
      <th>闸门编码</th>
      <th>流量</th>
      <th>闸前水位</th>
      <th>闸后水位</th>
      <th>闸门开度</th>
      <th>时间</th>
    </tr>
  </thead>
  <tbody>
  
   <c:forEach items="${page.gateDat}" var="gd">
   
   <tr><td>${gd.gateStationNum}</td><td>${gd.gateGroupNum}</td><td>${gd.gateNum}</td><td>${gd.flow}</td><td>${gd.levelBef}</td>
   <td>${gd.levelAft}</td><td>${gd.gatage}</td><td>${gd.time}</td>
    </tr>
   
   </c:forEach>


  </tbody>
</table>
 
         <input type="hidden" value="${page.currentPage}" id="curPage"/>
         <ul class="pager">
            <li class=""><a  onclick="getPreviousPage()">上一页</a></li>
                       第${page.currentPage}页/共${page.totalPage }页
            <li class=""><a  onclick="getNextPage()">下一页</a></li>
         </ul>
         
