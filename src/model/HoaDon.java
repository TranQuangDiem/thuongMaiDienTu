package model;
import java.sql.Date;
public class HoaDon {
	int id;
	int idAccount;
	String tengoi;
	int soluongbaidang;
	Date ngayMua;
	Date ngayHetHan;
	double giaTri;
	int active;
	public HoaDon() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HoaDon(int idAccount, String tengoi, int soluongbaidang, Date ngayMua, Date ngayHetHan,
			double giaTri) {
		super();
		this.idAccount = idAccount;
		this.tengoi = tengoi;
		this.soluongbaidang = soluongbaidang;
		this.ngayMua = ngayMua;
		this.ngayHetHan = ngayHetHan;
		this.giaTri = giaTri;
	}
	public HoaDon(int idAccount, String tengoi, int soluongbaidang, Date ngayMua, Date ngayHetHan,
			double giaTri,int active) {
		super();
		this.idAccount = idAccount;
		this.tengoi = tengoi;
		this.soluongbaidang = soluongbaidang;
		this.ngayMua = ngayMua;
		this.ngayHetHan = ngayHetHan;
		this.giaTri = giaTri;
		this.active=active;
	}
	
	public HoaDon(int id, int idAccount, String tengoi, int soluongbaidang, Date ngayMua, Date ngayHetHan,
			double giaTri,int active) {
		super();
		this.id = id;
		this.idAccount = idAccount;
		this.tengoi = tengoi;
		this.soluongbaidang = soluongbaidang;
		this.ngayMua = ngayMua;
		this.ngayHetHan = ngayHetHan;
		this.giaTri = giaTri;
		this.active=active;
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
	public String getTengoi() {
		return tengoi;
	}
	public void setTengoi(String tengoi) {
		this.tengoi = tengoi;
	}
	public int getSoluongbaidang() {
		return soluongbaidang;
	}
	public void setSoluongbaidang(int soluongbaidang) {
		this.soluongbaidang = soluongbaidang;
	}
	public Date getNgayMua() {
		return ngayMua;
	}
	public void setNgayMua(Date ngayMua) {
		this.ngayMua = ngayMua;
	}
	public Date getNgayHetHan() {
		return ngayHetHan;
	}
	public void setNgayHetHan(Date ngayHetHan) {
		this.ngayHetHan = ngayHetHan;
	}
	public double getGiaTri() {
		return giaTri;
	}
	public void setGiaTri(double giaTri) {
		this.giaTri = giaTri;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	
}
