package model;

import java.util.Date;

public class Subscriber {
	private int id;
	private Account account;
	private Date dateApply;
	private float starAverage;
	private Status status;
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
	
	
	public Status getStatus() {
		return status;
	}
	public void setStatus(int status) {
		switch (status) {
		case 1:
			this.status = Status.APPLY;
			break;
		case 2:
			this.status = Status.ACCEPT;
			break;
		case 3:
			this.status = Status.REJECT;
			break;

		default:
			break;
		}
		
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
				+ starAverage + ", apply=" + status + ", job=" + job + "]";
	}
	public static enum Status {
		APPLY(1),ACCEPT(2),REJECT(3);
		public Integer value;
		private Status(Integer i) {
			this.value=i;
		}
		public Integer getValue() {
			return value;
		}

	}
	
	

}
