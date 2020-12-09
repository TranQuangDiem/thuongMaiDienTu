package database.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Evaluate {
	int id;
	Account account;
	Date time;
	float star;
	String content;
	
	
	
	
	public Evaluate() {
		super();
	}


	public Evaluate(int id, Account account, Date time, float star, String content) {
		super();
		this.id = id;
		this.account = account;
		this.time = time;
		this.star = star;
		this.content = content;
		
		
		
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Account getAccount() {
		return account;
	}


	public void setAccount(Account account) {
		this.account = account;
	}


	public Date getTime() {
		return time;
	}


	public void setTime(Date time) {
		this.time = time;
	}


	public float getStar() {
		return star;
	}


	public void setStar(float star) {
		this.star = star;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	
	
	
	
	

}
