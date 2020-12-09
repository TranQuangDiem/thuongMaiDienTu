package database.model;

public class Pricing {
	int id ;
	String tengoi;
	int gia;
	int soluongbaidang;
	String thoihan;
	String mota;
	String doUuTien;
	
	public Pricing() {
	}

	
	public Pricing(int id, String tengoi, int gia, int soluongbaidang, String thoihan, String mota,
			String doUuTien) {
		super();
		this.id = id;
		this.tengoi = tengoi;
		this.gia = gia;
		this.soluongbaidang = soluongbaidang;
		this.thoihan = thoihan;
		this.mota = mota;
		this.doUuTien = doUuTien;
	}


	public String getDoUuTien() {
		return doUuTien;
	}

	public void setDoUuTien(String doUuTien) {
		this.doUuTien = doUuTien;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTengoi() {
		return tengoi;
	}

	public void setTengoi(String tengoi) {
		this.tengoi = tengoi;
	}

	public int getGia() {
		return gia;
	}


	public void setGia(int gia) {
		this.gia = gia;
	}


	public int getSoluongbaidang() {
		return soluongbaidang;
	}

	public void setSoluongbaidang(int soluongbaidang) {
		this.soluongbaidang = soluongbaidang;
	}

	public String getThoihan() {
		return thoihan;
	}

	public void setThoihan(String thoihan) {
		this.thoihan = thoihan;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	@Override
	public String toString() {
		return "Pricing [id=" + id + ", tengoi=" + tengoi + ", gia=" + gia + ", soluongbaidang=" + soluongbaidang
				+ ", thoihan=" + thoihan + ", mota=" + mota + ", doUuTien=" + doUuTien + "]";
	}

	
	


}
