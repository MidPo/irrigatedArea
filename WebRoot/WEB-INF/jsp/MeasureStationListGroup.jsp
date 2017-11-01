<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<script>
            function GetAletaiMap(a) {
            	
             $(a).attr("class", "list-group-item active").siblings().attr("class", "list-group-item");
            	 document.getElementById("showWaterDetail").innerHTML ="";  
                 $.ajax({ 
                	
                     type: 'post', //可选get  
                     url: '${pageContext.request.contextPath }/getAletaiMap', //这里是接收数据的程序  
                    // data: 'data=2', //传给后台的数据，多个参数用&连接  
                     dataType: 'html', //服务器返回的数据类型 可选XML ,Json jsonp script html text等  
                     success: function(msg) {  
                         //这里是ajax提交成功后，程序返回的数据处理函数。msg是返回的数据，数据类型在dataType参数里定义！  
                         document.getElementById("showWaterDetail").innerHTML = msg;  
                         //$("#duoduo").innerHTML = msg;  
                     },  
                     error: function() {  
                         alert('对不起失败了');  
                     }  
                 })  
				
			};
            
            function GetGateData(a) {
            
                $(a).attr("class", "list-group-item active").siblings().attr("class", "list-group-item");
           	 document.getElementById("showWaterDetail").innerHTML ="";  
                $.ajax({  
                	
                
                    type: 'post', //可选get  
                    url: '${pageContext.request.contextPath }/getGateData', //这里是接收数据的程序  
                   // data: 'data=2', //传给后台的数据，多个参数用&连接  
                    dataType: 'html', //服务器返回的数据类型 可选XML ,Json jsonp script html text等  
                    success: function(msg) {  
                        //这里是ajax提交成功后，程序返回的数据处理函数。msg是返回的数据，数据类型在dataType参数里定义！  
                        document.getElementById("showWaterDetail").innerHTML = msg;  
                        //$("#duoduo").innerHTML = msg;  
                    },  
                    error: function() {  
                        alert('对不起失败了');  
                    }  
                })  
				
			};

			 function searchGateDataBySelect()
			 {
				
				 document.getElementById("showGateDataTable").innerHTML =""; 
		    	 $.ajax({
		             type: "post",
		             url: "${pageContext.request.contextPath }/pageControlBySelect",     
		             data: $("#form1").serialize(),  
		             dataType: 'html',
		             global:false,
		             success: function(data) {
		            	
		            	 document.getElementById("showGateDataTable").innerHTML = data;  
		            	
		             },
		             error: function(data) {
		                 alert(data);
		             }
		         })
		    	
		    	
		      }
			 
			 
			 function getPreviousPage() {
				 
				
				  
				  var curPage = document.getElementById("curPage").value;
		           document.getElementById("showGateDataTable").innerHTML = "";
		          
		            
		            if (curPage == "1") {
		                var currentPage = parseInt(curPage);
		            }
		            else
		            { var currentPage = parseInt(curPage) - 1; }
		            
		            $.ajax({
	                    type: "get",
	                    url: "${pageContext.request.contextPath }/pageControlBySelect?currentPage="+currentPage,
	                    data: $("#form1").serialize(),
	                    dataType: 'html',

	                 success: function (data) {
	                        
	                        document.getElementById("showGateDataTable").innerHTML = data;
	                     
	                    },
	                    error: function (data) {
	                        alert(data);
	                    }
	                })
	
				
			}
			 
			 
			 
			 function getNextPage() {
				 
			
				 var curPage = document.getElementById("curPage").value;
				 
		           document.getElementById("showGateDataTable").innerHTML = "";

		            var currentPage = parseInt(curPage) + 1; 
		            
		            $.ajax({
	                    type: "get",
	                    url: "${pageContext.request.contextPath }/pageControlBySelect?currentPage="+currentPage,
	                    data: $("#form1").serialize(),
	                    dataType: 'html',

	                 success: function (data) {
	                       
	                        document.getElementById("showGateDataTable").innerHTML = data;
	                       
	                    },
	                    error: function (data) {
	                        alert(data);
	                    }
	                })
	
				
			}
			
    </script>
    
     <div class="row">
        <div class="col-sm-2">
            <div class="list-group">
                <a class="list-group-item" onclick="GetAletaiMap(this)">
                                灌区渠系地图展示                          
                </a>
                <a href="#" class="list-group-item" onclick="GetGateData(this)">闸门测站数据</a>
                <a href="#" class="list-group-item">水雨情实时数据</a>
                <a href="#" class="list-group-item">实时视频图像</a>
             
            </div>

        </div>
        <div id="showWaterDetail" class="col-sm-10">
    
        </div>

    </div>