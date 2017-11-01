package com.watersystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NeedWaterController {
	
	@RequestMapping(value="needWaterAnalyze")
	public String getNeedWaterPage() {
		
		return "NeedWaterAnalyze";
		
	}

}
