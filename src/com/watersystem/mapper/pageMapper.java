package com.watersystem.mapper;

import java.util.ArrayList;

import com.watersystem.po.gateData;
import com.watersystem.po.page;
import com.watersystem.po.pageQueryVo;

public interface pageMapper {
	
	public ArrayList<gateData> findPageGateData(pageQueryVo pageQueryVo) throws Exception;
	         
	public int findGateDataCount() throws Exception;
	
	public int findGateDataCountBySelect(pageQueryVo pageQueryVo) throws Exception;
		
    public ArrayList<gateData> findPageGateDataBySelect(pageQueryVo pageQueryVo) throws Exception;
    
    
}
