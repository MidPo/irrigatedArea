<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

	<h2>欢迎使用地图功能模块</h2>
	<p>为基础图层添加额外图层时，请确认<span style="font-weight:bold">投影坐标</span>是否相同。否则，地图会<b>显示错误</b></p>
	
	<!--  
	<input type="text" id="layerCondition" value="exclude:1,2,4,5,6" size="19" />
	<input type="button" id="layer" value="图层显示控制" onclick="layerCtr('layerCtr')" />
    
    <input type="text" id="featureCondition" value="1:CNTRY_NAME='China'or CNTRY_NAME='Libya',2:ID=2400" size="19" />
    <input type="button" id="feature" value="要素显示控制" onclick="layerCtr('featureCtr')" />
     -->
     
    <input type="button" class="ButtonLib" value="地图复位" onclick="reset()"/> 
    
    
    <input type="text" id="layerToBeRemoved" value="请输入要删除图层的名称" size=23/> 
    <input type="button" value="撤销/删除 图层" onclick="removeLayer()"/>
    
    
    <div id="mapCon" style="height:500px;width: 1000px;border: 2px solid #000000;"></div>
    
	
    <input type="text" id="mapName"  value="WorldJWVector" />
	<button onclick="loadBaseMap()" >加载基础地图 </button>

    
	<input type="text" id="layerName"  value="请输入额外添加的图层名称" size="40"/>
	<button onclick="loadLayer()" >添加额外图层</button>