package com.tienda.springmvc.model;

import java.io.Serializable;

public enum UserProfileType implements Serializable{
	USER("USER"),
	EMPLEADOS("EMPLEADOS"),
	ADMIN("ADMIN");
	
	String userProfileType;
	
	private UserProfileType(String userProfileType){
		this.userProfileType = userProfileType;
	}
	
	public String getUserProfileType(){
		return userProfileType;
	}
	
}
