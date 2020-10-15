package ch06.ex01;

import java.time.LocalDate;

public class User {
	private int userNo;
	private String userName;
	private LocalDate regDate;
	
	public User(int userNo, String userName, LocalDate regDate) {
		this.userNo = userNo;
		this.userName = userName;
		this.regDate = regDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public String getUserName() {
		return userName;
	}

	public LocalDate getRegDate() {
		return regDate;
	}
	
	@Override
	public String toString() {
		return userNo + ", " + userName + ", " + regDate;
	}
}
