package com.watersystem.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.watersystem.mapper.pageMapper;
import com.watersystem.po.gateData;
import com.watersystem.po.page;
import com.watersystem.po.pageExtend;
import com.watersystem.po.pageQueryVo;
import com.watersystem.service.pageService;

public class pageServiceImpl implements pageService {
	
	@Autowired private pageMapper pageMapper;

	public page findPageGateData_Ser(int currentPage, int pageSize) throws Exception {
		
		int count=pageMapper.findGateDataCount();
		
		int totalPage = (int) Math.ceil(count*1.0/pageSize);
		
		pageQueryVo paQueryVo=new pageQueryVo();
		
		int currentId=(currentPage-1)*pageSize;
		
		paQueryVo.setCurrentPage(currentId);
		paQueryVo.setPageSize(pageSize);
		
		
		ArrayList<gateData> gateDatasList=pageMapper.findPageGateData(paQueryVo);
		 
		page page=new page();
		
		page.setCount(count);
		page.setTotalPage(totalPage);
		page.setCurrentPage(currentPage);
		page.setGate(gateDatasList);
		
	
		return page;
	}

	@Override
	public pageExtend findPageGateDataBySelect_Ser(int currentPage, int pageSize, String measureStation, String gateGroup,
			String gate) throws Exception {
		
		pageQueryVo pQueryVo=new pageQueryVo();
	
		
		pQueryVo.setMeasureStation(Integer.parseInt(measureStation));
		pQueryVo.setGateGroup(Integer.parseInt(gateGroup));
		pQueryVo.setGate(Integer.parseInt(gate));
		
		int currentId=(currentPage-1)*pageSize;
		
		pQueryVo.setCurrentPage(currentId);
		pQueryVo.setPageSize(pageSize);
		
		int count=pageMapper.findGateDataCountBySelect(pQueryVo);
		
		int totalPage=(int) Math.ceil(count*1.0/pageSize);
		
		ArrayList<gateData> gateDataList=pageMapper.findPageGateDataBySelect(pQueryVo);
		
		pageExtend pExtend=new pageExtend();
		
		pExtend.setCount(count);
		pExtend.setCurrentPage(currentPage);
		pExtend.setGate(Integer.parseInt(gate));
		pExtend.setGateDat(gateDataList);
		pExtend.setGateGroup(Integer.parseInt(gateGroup));
		pExtend.setMeasureStation(Integer.parseInt(measureStation));
		pExtend.setPageSize(pageSize);
		pExtend.setTotalPage(totalPage);
	
		
		
		return pExtend;
}

	

	

}
