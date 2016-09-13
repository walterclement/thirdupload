package com.bakeecom.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Supplier {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sid;
	private String sname;
	private String place;

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getName() {
		return sname;
	}

	public void setName(String sname) {
		this.sname = sname;
	}

	
	public String getPlace() {
		return place;
	}

	public void setPrice(String place) {
		this.place = place;
	}



}
