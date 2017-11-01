<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

   <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">闸门测站数据</h3>
        </div>
        
   <div class="panel-body">
        
  <form class="form-inline" role="form" action="" id="form1">
 
    <div class="form-group">
     <label for="name">测站:</label>
     <select class="form-control" style="width:200px" onchange="getGateGroup()" id="MeasureStation" name="MeasureStation">
       <option value="0">-------请选择测站-------</option>
       <option value="9060001">渠首</option>
       <option value="9060002">一分水</option>
       <option value="9060003">二分水</option>
       <option value="9060004">六号坑</option>
       <option value="9060005">民族新村</option>
       <option value="9060006">水库</option>
      </select>
    </div>
    
    
    <div class="form-group">
      <label for="name">闸门组:</label>
      <select class="form-control" style="width:200px" id="GateGroup" onchange="getGate()" name="GateGroup">
        <option value="0">-------请选择闸门组-------</option>
      </select>
    </div>
    
    <div class="form-group">
      <label for="name">闸门:</label>
   
      <select class="form-control" style="width:200px" id="Gate" name="Gate">
        <option value="0">-------请选择闸门-------</option>
  
      </select>
    </div>
   
 
    <button class="btn btn-primary" onclick="searchGateDataBySelect()" type="button">搜索</button>
  </form>


  <div id="showGateDataTable">
  
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
  
        <c:forEach items="${page.gate}" var="gd">
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
     </div>
 
        
 
         
        </div>
         
</div>