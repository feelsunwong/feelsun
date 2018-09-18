package org.lanqiao.entity;

public class Student {
	private Long sid;//sid默认值null
	private String name;
	private Integer age;
	private String sex;
	private String hobby;
	private String addr;
	
	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "Student [sid=" + sid + ", name=" + name + ", age=" + age + ", sex=" + sex + ", hobby=" + hobby
				+ ", addr=" + addr + "]";
	}

	public Long getSid() {
		return sid;
	}
	public void setSid(Long sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	

}
