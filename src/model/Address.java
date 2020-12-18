package model;

public class Address {
	private int id;
	private String tinhThanhPho;
	private String quanHuyen;
	private String xaPhuong;
	private String diaChi;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTinhThanhPho() {
		return tinhThanhPho;
	}
	public void setTinhThanhPho(String tinhThanhPho) {
		this.tinhThanhPho = tinhThanhPho;
	}
	public String getQuanHuyen() {
		return quanHuyen;
	}
	public void setQuanHuyen(String quanHuyen) {
		this.quanHuyen = quanHuyen;
	}
	public String getXaPhuong() {
		return xaPhuong;
	}
	public void setXaPhuong(String xaPhuong) {
		this.xaPhuong = xaPhuong;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", tinhThanhPho=" + tinhThanhPho + ", quanHuyen=" + quanHuyen + ", xaPhuong="
				+ xaPhuong + ", diaChi=" + diaChi + "]";
	}
	

}
