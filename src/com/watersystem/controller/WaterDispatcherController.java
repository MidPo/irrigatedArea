package com.watersystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WaterDispatcherController {

	@RequestMapping(value="/waterDispatcher")
	public String getNeedWaterPage() throws Exception
	{
		
		return "CanalWaterDispatcher";
		
	}
	
	@RequestMapping(value="/CanalHead")
	public String getCanalHeadPanel() throws Exception
	{
		return "CanalHeadPanel";
	}
	
	@RequestMapping(value="/CanalFirst")
	public String getCanalFirstPanel() throws Exception
	{
		return "CanalFirstPanel";
	}
}
