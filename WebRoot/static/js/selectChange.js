  var gateGroup=[    
            ["进水闸","泄洪闸"],  
            ["电站进水","北干进水","节制闸"],  
            ["183","节制闸"],  
            ["进水闸"],  
            ["进水闸"],  
            ["进水闸","节制闸"]
        ]; 
  var gateGroupVal=[
	  ["10001","10002"],
	  ["10001","10002","10003"],
	  ["10001","10002"],
	  ["10001"],
	  ["10001"],
	  ["10001","10002"]  
  ];
  
  var gate=[    
     [["1孔","2孔"],["1孔","2孔","3孔"]],
     [["1孔"],["1孔"],["1孔","2孔","3孔"]], 
     [["1孔"],["1孔","2孔","3孔"]],
     [["1孔"]],
     [["1孔"]],
     [["1孔"],["1孔","2孔"]] 
  ]; 
var gateVal=[
	     [["1","2"],["1","2","3"]],
	     [["1"],["1"],["1","2","3"]], 
	     [["1"],["1","2","3"]],
	     [["1"]],
	     [["1"]],
	     [["1"],["1","2"]]
];

  function getGateGroup(){ 
	
      //获得MeasureStation下拉框的对象    
      var sltMeas=document.getElementById("MeasureStation");  
      //获得城市下拉框的对象  
     
      var sltGateGroup=document.getElementById("GateGroup");    
 
      var MeasGate=gateGroup[sltMeas.selectedIndex-1];   
      var MeasGateVal=gateGroupVal[sltMeas.selectedIndex-1];
      //清空城市下拉框，仅留提示选项    
      sltGateGroup.length=1;    
      //将城市数组中的值填充到城市下拉框中    
      for(var i=0;i<MeasGate.length;i++){    
          sltGateGroup[i+1]=new Option(MeasGate[i],MeasGateVal[i]);    
          }    
  }  
  
  function getGate(){ 
		
      //获得MeasureStation下拉框的对象    
      var sltMeas=document.getElementById("MeasureStation");  
      //获得城市下拉框的对象  
     
      var sltGateGroup=document.getElementById("GateGroup"); 
      var sltGate=document.getElementById("Gate");  
   
      var MeasGateGroupGate=gate[sltMeas.selectedIndex-1][sltGateGroup.selectedIndex-1];   
      var MeasGateGroupGateVal=gateVal[sltMeas.selectedIndex-1][sltGateGroup.selectedIndex-1];
      //清空城市下拉框，仅留提示选项    
      sltGate.length=1;    
      //将城市数组中的值填充到城市下拉框中    
      for(var i=0;i<MeasGateGroupGate.length;i++){    
          sltGate[i+1]=new Option(MeasGateGroupGate[i],MeasGateGroupGateVal[i]);    
          } 
      
   
     
  } 