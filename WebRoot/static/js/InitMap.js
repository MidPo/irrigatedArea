/*niubi*/
var vectorMapdoc, vectorLayer;
 
 var layerArray;//该变量存储创建过的所有图层及其名称和id。是一个对象数组
 layerArray = new Array();
 
 var mapName;//存储从输入栏接收的基础图层名称
 var layerLocation;//存储从输入栏接收的额外图层名称
 var layerToBeRemoved;//待删除的图层的名称
 
 var i = -1;//储存layer对象数组的下标，因为代码的一些原因，这样才能保证数组是从0开始的
 
 var flag = 0;//标志网页中的map类是否被创建。
 
 var myMap;//创建一个全局的map容器
 
   
    function loadBaseMap() {
    	
    mapName = document.getElementById("mapName").value;
    
    vectorMapdoc = createLayer(mapName);//初始化一个空的layer对象给vectorMapdoc
   
    //alert(vectorMapdoc.id);
    
    vectorMapdoc = new Zondy.Map.Doc(mapName,mapName, {

    ip: "127.0.0.1",
             
    port: "8089",

    isBaseLayer:true,
    
    
    });
    
    if(flag != 1)
    	{
    	createMapContainer();
    	}

    layerArray[i] = vectorMapdoc;//将vectorMapdoc的值存储起来。
    
    //alert(layerArray[i].projection);
    
    myMap.addLayer(layerArray[i]);//这句话要改，但如果直接改成layer数组，会有重复添加的问题。所以改成单个图层添加
	
	 //设置地图的初始化显示中心和级别，后面的数值越大，就放大地越大
	myMap.setCenter(new OpenLayers.LonLat(0, 0),1);//这句话还能有强制转换投影坐标系的作用
	
    alert("已添加基础图层 "+i+" "+layerArray[i].name);
   
    }
    
    
    
    function loadLayer()
    {
    	layerLocation = document.getElementById("layerName").value;
    	
    	
    	vectorLayer = createLayer(mapName);//初始化一个空的layer对象给vectorLayer
    	
    	/*这里目前仍采用的是用Doc形式的地图来作为添加图层，若出问题，可以考虑以Layer形式加载*/
    	vectorLayer = new Zondy.Map.Doc(layerLocation,layerLocation, {
    	        //矢量地图文档地图服务器 IP
    	        ip: "127.0.0.1",
    	      //矢量地图文档地图服务端口
    	       port: "8089",
    	       //是否作为基础显示图层，默认为 true，表示最为基础显示图层
    	        isBaseLayer: false,

    	        });
    	
    	layerArray[i] = vectorLayer;//将vectorMapdoc的值存储起来。

    	myMap.addLayer(layerArray[i]);//必须要添加了图层之后，才能获得投影坐标属性值
    	
    	//layerArray[i].redraw();
    	
    	alert("已添加额外图层 "+i+" "+layerArray[i].name);
    	
    	/*
			注意，project居然是一个类，两个类应该是诸如地址等东西值不相等， 因此是不可能相等的，
			将其类型转换为String后，再比较值就可以了。
			然而投影坐标都是map容器的默认坐标EPSG：4326
			墨卡托投影
    	if(vectorLayer.projection.toString() != vectorMapdoc1.projection.toString())
    		{
    		alert("添加的图层投影坐标不匹配，后续地图展示可能会有错误");
    		}
    	 */
    	
    }
    
    
    function layerCtr(s)
    {
    	if(s=="layerCtr")
    		{
    			//alert("执行了一次图层选择");
    			var layerStr=document.getElementById("layerCondition").value;
    			vectorMapdoc1.layers=layerStr;
    		}
    	
    	if(s=="featureCtr")
    		{
    			//alert("执行了一次filter");
    			var featureStr = document.getElementById("featureCondition").value;  
    			vectorMapdoc1.filters = featureStr;
    				
    		}
    	
    	refresh();
    }
    
    function refresh()
    {
    	//alert("执行了一次refresh");
    	//myMap.baseLayer.clearGrid();//这句话加上后效果就错了，而且这个函数，说明手册都没有
    	myMap.baseLayer.redraw();
    	
    }
    
    
    function createMapContainer()
    {
    	
    	myMap = new OpenLayers.Map('mapCon', {
    		isAutoConfig:true,		//设置自动获取MapGIS IGServer发布的地图的信息
        	numZoomLevels: 16,                                       //地图的缩放级别
        	maxExtent: new OpenLayers.Bounds(-180, -90, 90, 180),   //地图的最大范围
        	maxResolution: 14,                                        //地图最大分辨率，默认是360度/256像素，相当于缩放级别0
        	controls: [
        	new OpenLayers.Control.PanZoomBar(),                 //缩放面板的工具控件
        	new OpenLayers.Control.LayerSwitcher(),                //图层切换控件
        	new OpenLayers.Control.Navigation(),                   //此控件处理伴随鼠标事件的地图浏览
        	new OpenLayers.Control.MousePosition()             //此控件显示鼠标移动时，所在点的地理坐标
        	]
        	});
    	
    	flag = 1;
    }
    
    function reset() //地图复位按钮功能
    {
        myMap.zoomToMaxExtent();
    }
    
    
    function removeLayer()
    {
    	var flag1 = 0;//标志位，表示有没有寻找到指定的图层
    	
    	configure = document.getElementById("layerToBeRemoved").value;
    
    	if(configure == "请输入要删除图层的名称")
    	{
    		alert("撤销上一步添加的图层");
    		layerToBeRemoved = document.getElementById("layerToBeRemoved").value
    		myMap.removeLayer(layerArray[i]);//该函数中填写的必须时Layer对象
    		layerArray[i] = null;
    		i--;
    		
    	}
    	
    	else
    		{
    			for(j = 0;j<=i;j++) 
    				{
    				if(layerArray[j].name == configure)
    					{
    					alert("删除指定图层");
    					myMap.removeLayer(layerArray[j]);
    					
    					flag1 = 1;
    					
    					/*这部分用来修正删除了元素的数组,主要是移动元素，以及下标i值的修正*/
    					for(i=j; layerArray[i+1] != null; i++)
    						{
    							layerArray[i] = layerArray[i+1];
    						}
    					layerArray[i] = null;
    					i--;
    					alert(i);
    					
    					break;
    					}

    				}
    		
    			if(flag1 == 0)
    				alert("指定的图层不存在");
    		}
    }
    
    
    /*该函数是用于创建layer对象*/
    function createLayer(mapName)
    {
    	i++;
    	
    	tmpObject = new OpenLayers.Layer(mapName,{
    		
    	});
    	
    	layerArray[i] = tmpObject;
   
    	return layerArray[i];
    }
    
   
