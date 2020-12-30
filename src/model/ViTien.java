package model;

public class ViTien {
	int id;
	int idAccount;
	int tongTien;
	
	public ViTien(int id, int idAccount, int tongTien) {
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
	public int getTongTien() {
		return tongTien;
	}
	public void setTongTien(int tongTien) {
		this.tongTien = tongTien;
	}


}
