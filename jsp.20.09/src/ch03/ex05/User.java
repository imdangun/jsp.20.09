package ch03.ex05;

public class User {
	private String userName;
	private int age;
	
	public User(String userName, int age) {
		this.userName = userName;
		this.age = age;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	@Override
	public String toString() {
		return userName + ", " + age;
	}
}
