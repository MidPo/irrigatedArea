package com.watersystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.watersystem.po.page;
import com.watersystem.po.pageExtend;
import com.watersystem.service.pageService;


@Controller
public class MeasureStationController {
	
	@Autowired private pageService pageService;
	
     @RequestMapping(value="/measureStation")
	public String getMeasureStationPage() {
		
		return "MeasureStation";
		
	}
     @RequestMapping(value="/getAletaiMap")
    public String getAletaiMap() {
    	
    	return "MeasureStationAletaiMap";
		
	}
     
     @RequestMapping(value="/getGateData")
     public String getGateData(Model model) throws Exception {
    	 int currentPage=1;
    	 int pageSize=15;
    	 page page= pageService.findPageGateData_Ser(currentPage, pageSize);
    	 model.addAttribute("page", page);
     	return "MeasureStationGateData";
 		
 	}
   

     
     
     
     @RequestMapping(value="/pageControlBySelect")
    public String pageControlBySelect(Model model,String MeasureStation,String GateGroup,String Gate,String currentPage) throws Exception {
    	 int pageSize=15;
    	 int currPage;
    	 
    	 
    	if (currentPage ==null) {
    		 currPage=1;
			
		}else {
			currPage=Integer.parseInt(currentPage);
		}
    	
    	
    	
    	pageExtend page=pageService.findPageGateDataBySelect_Ser(currPage, pageSize, MeasureStation, GateGroup, Gate);
    	
    	model.addAttribute("page", page);
    	return "MeasureStationGateDataTable";
		
	}
     
}
