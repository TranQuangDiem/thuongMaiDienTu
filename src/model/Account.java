package model;

import java.util.regex.Pattern;


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
	private int soluongbaidang;
	private Address address;
	private String addressString;
	private String twitter;
	private String facebook;
	private String website;
	private String background;

	public Account() {
		super();
	}

	public Account(int id, String username, String password, String fullname, String image, float starAverage,
			String about, String email, String phone, int role, String name, String major, int soluongbaidang,
			Address address) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.image = image;
		this.starAverage = starAverage;
		this.about = about;
		this.email = email;
		this.phone = phone;
		this.role = role;
		this.name = name;
		this.major = major;
		this.soluongbaidang = soluongbaidang;
		this.address = address;
	}

	public Account(int id, String username, String password, String fullname, String image) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.image = image;
	}

	public int getSoluongbaidang() {
		return soluongbaidang;
	}

	public void setSoluongbaidang(int soluongbaidang) {
		this.soluongbaidang = soluongbaidang;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
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

	public String getTwitter() {
		return twitter;
	}

	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getBackground() {
		return background;
	}

	public void setBackground(String background) {
		this.background = background;
	}

	public String getAddressString() {
		return addressString;
	}

	public void setAddressString(String addressString) {
		this.addressString = addressString;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", username=" + username + ", password=" + password + ", fullname=" + fullname
				+ ", image=" + image + ", starAverage=" + starAverage + ", about=" + about + ", email=" + email
				+ ", phone=" + phone + ", role=" + role + ", name=" + name + ", major=" + major + ", soluongbaidang="
				+ soluongbaidang + ", address=" + address + ", twitter=" + twitter + ", facebook=" + facebook
				+ ", website=" + website + ", background=" + background + "]";
	}

	public static boolean validName(String name) {
		String expression = "^\\p{L}+[\\p{L}\\p{Z}\\p{P}]{0,}";
		return name.matches(expression);
	}
	public static boolean validPassword(String password) {
		String expression = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{8,20}$";
		return password.matches(expression) ;
	}

	public static boolean validUsername(String username) {
		return username.matches("^[a-zA-Z0-9._-]{8,}$");
	}

	public static boolean validEmail(String email) {
		String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\." + "[a-zA-Z0-9_+&*-]+)*@" + "(?:[a-zA-Z0-9-]+\\.)+[a-z"
				+ "A-Z]{2,7}$";

		Pattern pat = Pattern.compile(emailRegex);
		if (email == null)
			return false;
		return pat.matcher(email).matches();
	}
	

}
