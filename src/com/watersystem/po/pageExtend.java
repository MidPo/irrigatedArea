package com.watersystem.po;

import java.util.ArrayList;

public class pageExtend {
	
	 private int currentPage;
	 
	 private int totalPage;

	 private ArrayList<gateData> gateDat;
	 
	 private int count;
	 
	 private int pageSize;

    private int  measureStation;
	 
	 private int gateGroup;
	 
	 private int gate;

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public ArrayList<gateData> getGateDat() {
		return gateDat;
	}

	public void setGateDat(ArrayList<gateData> gateDat) {
		this.gateDat = gateDat;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getMeasureStation() {
		return measureStation;
	}

	public void setMeasureStation(int measureStation) {
		this.measureStation = measureStation;
	}

	public int getGateGroup() {
		return gateGroup;
	}

	public void setGateGroup(int gateGroup) {
		this.gateGroup = gateGroup;
	}

	public int getGate() {
		return gate;
	}

	public void setGate(int gate) {
		this.gate = gate;
	}
	 
	 
	
}
