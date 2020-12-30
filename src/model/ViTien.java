package model;

public class ViTien {
	int id;
	int idAccount;
	double tongTien;
	
	public ViTien(int id, int idAccount, double tongTien) {
		super();
		this.id = id;
		this.idAccount = idAccount;
		this.tongTien = tongTien;
	}
	public ViTien() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdAccount() {
		return idAccount;
	}
	public void setIdAccount(int idAccount) {
		this.idAccount = idAccount;
	}
	public double getTongTien() {
		return tongTien;
	}
	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}

}
