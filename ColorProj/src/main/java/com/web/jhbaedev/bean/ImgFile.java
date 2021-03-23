package com.web.jhbaedev.bean;

import java.util.Date;

public class ImgFile {
	int IMAGEFILENO; 
	String IMAGEFILENAME;
	Date REGDATE;
	int moodno;
	
	public int getIMAGEFILENO() {
		return IMAGEFILENO;
	}
	public void setIMAGEFILENO(int iMAGEFILENO) {
		IMAGEFILENO = iMAGEFILENO;
	}
	public String getIMAGEFILENAME() {
		return IMAGEFILENAME;
	}
	public void setIMAGEFILENAME(String iMAGEFILENAME) {
		IMAGEFILENAME = iMAGEFILENAME;
	}
	public Date getREGDATE() {
		return REGDATE;
	}
	public void setREGDATE(Date rEGDATE) {
		REGDATE = rEGDATE;
	}
	public int getMoodno() {
		return moodno;
	}
	public void setMoodno(int moodno) {
		this.moodno = moodno;
	}
	
	
}
