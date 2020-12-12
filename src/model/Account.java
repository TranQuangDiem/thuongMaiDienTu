package model;

public class Account {
	private int id;
	private String username;
	private String password;
	private String fullname;
	private String image;
	private float starAverage;
	private String about;
	private String email;
	private String phone;
	private int role;
	private String name;
	private String major;
	
	
	
	public Account() {
		super();
	}
	public Account(int id, String username, String password, String fullname, String image) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	public float getStarAverage() {
		return starAverage;
	}
	public void setStarAverage(float starAverage) {
		this.starAverage = starAverage;
	}
	
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	@Override
	public String toString() {
		return "Account [id=" + id + ", username=" + username + ", password=" + password + ", fullname=" + fullname
				+ ", image=" + image + ", starAverage=" + starAverage + ", about=" + about + ", email=" + email
				+ ", phone=" + phone + ", role=" + role + ", name=" + name + ", major=" + major + "]";
	}
	
	
	
	
	

}
