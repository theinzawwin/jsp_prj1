package com.bestbright;

public class Grade {

	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	private String name;
	private String teacherName;
	public Grade(int id, String name, String teacherName) {
		super();
		this.id = id;
		this.name = name;
		this.teacherName = teacherName;
	}
	
}
