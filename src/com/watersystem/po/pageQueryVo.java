package com.watersystem.po;

public class pageQueryVo {
	
	 private int currentId;
	 
	 private int pageSize;
	 
	 private int  measureStation;
	 
	 private int gateGroup;
	 
	 private int gate;
	public int getCurrentPage() {
		return currentId;
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

	public void setCurrentPage(int currentPage) {
		this.currentId = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	

}
