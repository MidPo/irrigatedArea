<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    

    

 <script>

            function CanalHead(a) {
            	
             $(a).attr("class", "list-group-item active").siblings().attr("class", "list-group-item");
            	 document.getElementById("showWaterDetail").innerHTML ="";  
                 $.ajax({  
                     type: 'post', //可选get  
                     url: '${pageContext.request.contextPath }/CanalHead', //这里是接收数据的程序  
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
            
            function CanalFirst(a) {
            
                $(a).attr("class", "list-group-item active").siblings().attr("class", "list-group-item");
           	 document.getElementById("showWaterDetail").innerHTML ="";  
                $.ajax({  
                    type: 'post', //可选get  
                    url: '${pageContext.request.contextPath }/CanalFirst', //这里是接收数据的程序  
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
			
			
			
			/*
			红线代表闸前水位，蓝色部分表示闸门下方的水。黑色为闸门的绳索。
			*/
			function myFunction1()
			{
				alert();
				var realWaterLevel=3;/*这是闸前水位实际高度，单位m*/
				var pxWaterLevel;/*这是计算出的图像中的水位高度，单位px*/
				var nowValue;/*计算出的闸门底部的位置，单位px*/
				var kaiDU=4;/*闸门实际开度，单位为m*/
				var totalHeight=10;/*实际中，闸门底部到绳索顶端的距离*/
				nowValue=(totalHeight-kaiDU)/totalHeight*600-180+"px";
				/*180px是此时闸门的总长度*/
				pxWaterLevel=realWaterLevel/totalHeight*600+"px";
				/*加2，是为了使边框重合，消除边框宽度的影响。*/

					$(document).ready(function(){
		    			$("div#rope1").animate({height:nowValue},2000);
						$("div#blank1_1").animate({height:nowValue},1930);
						$("div#blank1_2").animate({height:nowValue},1930);
						$("div#waterLevel1").animate({height:pxWaterLevel},2000);
						$("div#waterLine1").animate({bottom:pxWaterLevel},2000);
					});

			}

    </script>
    
     <div class="row">
        <div class="col-sm-2">
            <div class="list-group">
                <a class="list-group-item" onclick="CanalHead(this)">
                                                           渠首
                </a>
                <a href="#" class="list-group-item" onclick="CanalFirst(this)">一分水</a>
                <a href="#" class="list-group-item">二分水</a>
                <a href="#" class="list-group-item">等等</a>
             
            </div>

        </div>
        <div id="showWaterDetail" class="col-sm-10">
    
        </div>

    </div>