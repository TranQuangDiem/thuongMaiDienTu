package model;

import java.util.Date;

public class Job {
	int id;
	String tencongviec;
	String chitiet;
	int chiphi;
	String img;
	int soluongtuyen;
	Date ngaydang;

	public Job() {
		super();
	}

	

	public Job(int id, String tencongviec, String chitiet, int chiphi, String img, int soluongtuyen, Date ngaydang) {
		super();
		this.id = id;
		this.tencongviec = tencongviec;
		this.chitiet = chitiet;
		this.chiphi = chiphi;
		this.img = img;
		this.soluongtuyen = soluongtuyen;
		this.ngaydang = ngaydang;
	}



	public Date getNgaydang() {
		return ngaydang;
	}

	public void setNgaydang(Date ngaydang) {
		this.ngaydang = ngaydang;
	}

	public int getSoluongtuyen() {
		return soluongtuyen;
	}

	public void setSoluongtuyen(int soluongtuyen) {
		this.soluongtuyen = soluongtuyen;
	}

	public String getTencongviec() {
		return tencongviec;
	}

	public void setTencongviec(String tencongviec) {
		this.tencongviec = tencongviec;
	}

	public String getChitiet() {
		return chitiet;
	}

	public void setChitiet(String chitiet) {
		this.chitiet = chitiet;
	}

	public int getChiphi() {
		return chiphi;
	}

	public void setChiphi(int chiphi) {
		this.chiphi = chiphi;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
