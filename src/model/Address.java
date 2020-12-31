package model;

public class Address {
	private int id;
	private String province;
	private String district;
	private String ward;
	private String detailAddress;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getWard() {
		return ward;
	}
	public void setWard(String ward) {
		this.ward = ward;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", province=" + province + ", district=" + district + ", ward=" + ward
				+ ", detailAddress=" + detailAddress + "]";
	}
	
	

}
