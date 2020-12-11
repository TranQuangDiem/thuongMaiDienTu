package model;

import java.util.Date;

public class Subscriber {
	private int id;
	private Account account;
	private Date dateApply;
	private float starAverage;
	private int apply;
	private Job job;
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
	public Date getDateApply() {
		return dateApply;
	}
	public void setDateApply(Date dateApply) {
		this.dateApply = dateApply;
	}
	public float getStarAverage() {
		return starAverage;
	}
	public void setStarAverage(float starAverage) {
		this.starAverage = starAverage;
	}
	
	public int getApply() {
		return apply;
	}
	public void setApply(int apply) {
		this.apply = apply;
	}
	
	public Job getJob() {
		return job;
	}
	public void setJob(Job job) {
		this.job = job;
	}
	@Override
	public String toString() {
		return "Subscriber [id=" + id + ", account=" + account + ", dateApply=" + dateApply + ", starAverage="
				+ starAverage + ", apply=" + apply + ", job=" + job + "]";
	}
	
	

}
