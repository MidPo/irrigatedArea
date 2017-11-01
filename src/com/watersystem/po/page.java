package com.watersystem.po;

import java.util.ArrayList;

public class page {
	
	
	
	
 private int currentPage;
 
 private int totalPage;

 private ArrayList<gateData> gate;
 
 private int count;
 private int pageSize;
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
public ArrayList<gateData> getGate() {
	return gate;
}
public void setGate(ArrayList<gateData> gate) {
	this.gate = gate;
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
 
 

 
 

}
