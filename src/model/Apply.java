package model;

import java.util.Date;

public class Apply {
	private int id;
	private Account account;
	private Date dateApply;
	private Job job;
	private int id_job;

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

	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

	public int getId_job() {
		return id_job;
	}

	public void setId_job(int id_job) {
		this.id_job = id_job;
	}

}
