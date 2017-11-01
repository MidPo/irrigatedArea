package com.watersystem.service;

import com.watersystem.po.page;
import com.watersystem.po.pageExtend;

public interface pageService {
	
	page findPageGateData_Ser(int currentPage, int pageSize) throws Exception;
	
	pageExtend findPageGateDataBySelect_Ser(int currentPage,int pageSize,String measureStation,String gateGroup,String gate) throws Exception;

}
