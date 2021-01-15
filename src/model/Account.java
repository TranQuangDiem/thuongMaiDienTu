package model;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.regex.Pattern;

import javax.imageio.ImageIO;

import customutil.AccessHelper;
import database.UtilImage;

public class Account {
	private int id;
	private String username;
	private String password;
	private String fullname;
	private BufferedImage image;
	private int star;
	private int countJob;
	private int countJobFinish;
	private int countHired;
	private int countEvaluate;
	private String about;
	private String email;
	private String phone;
	private int role;
	private String name;
	private String major;
	private int soluongbaidang;
	private Address address;
	
	private String twitter;
	private String facebook;
	private String website;
	private BufferedImage background;
	private String linkedin;
	
	private boolean active;
	
	private boolean ready;
	public Account() {
		super();
	}

	
	public Account(int id, String fullname, String email, String phone, int soluongbaidang) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.email = email;
		this.phone = phone;
		this.soluongbaidang = soluongbaidang;
	}
	


	public boolean isActive() {
		return active;
	}


	public void setActive(boolean active) {
		this.active = active;
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
	
	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
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

	public BufferedImage getImage() {
		return image;
	}

	public void setBackground(BufferedImage background) {
		this.background = background;
	}

	public String getImageBase64() {
		if(image==null)return null;
		String rs = "";
		try {
			rs = UtilImage.covertBase64(image);
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		return rs;
	}

	public void setImage(BufferedImage image) {
		this.image = image;
	}

	public void setImage(Blob image) {

		try {
			if (image != null) {
				this.image = ImageIO.read(image.getBinaryStream());
			} else {
				this.image = null;
			}
		} catch (IOException | SQLException e) {
			e.printStackTrace();
		}
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
		if(twitter==null)return "";
		if(twitter.contains("https://www."))return twitter;
		if(twitter.contains("www."))return "https://"+twitter;
		return "https://www."+twitter;
		
	}

	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}
	public String getWebsite() {
		if(website==null)return "";
		if(website.contains("https://www."))return website;
		if(website.contains("www."))return "https://"+website;
		
		return "https://www."+website;
	}

	public String getFacebook() {
		if(facebook==null)return "";
		if(facebook.contains("https://www."))return facebook;
		if(facebook.contains("www."))return "https://"+facebook;
		
		return "https://www."+facebook;
		
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	

	public void setWebsite(String website) {
		this.website = website;
	}

	public BufferedImage getBackground() {
		return background;
	}

	public String getBackgroundBase64() {
		if(background==null)return null;
		String rs = "";
		try {

			rs = UtilImage.covertBase64(background);
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		return rs;
	}

	public void setBackground(Blob background) {

		try {
			if(background!=null)
			this.background = ImageIO.read(background.getBinaryStream());
			else this.background=null;
		} catch (IOException | SQLException e) {

			e.printStackTrace();
		}
	}

	
	

	




	

	public int getStar() {
		return star;
	}


	public void setStar(int star) {
		this.star = star;
	}


	public int getCountJob() {
		return countJob;
	}


	public void setCountJob(int countJob) {
		this.countJob = countJob;
	}


	


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Account [id=");
		builder.append(id);
		builder.append(", username=");
		builder.append(username);
		builder.append(", password=");
		builder.append(password);
		builder.append(", fullname=");
		builder.append(fullname);
		builder.append(", image=");
		builder.append(image);
		builder.append(", star=");
		builder.append(star);
		builder.append(", countJob=");
		builder.append(countJob);
		builder.append(", countJobFinish=");
		builder.append(countJobFinish);
		builder.append(", countEvaluate=");
		builder.append(countEvaluate);
		builder.append(", about=");
		builder.append(about);
		builder.append(", email=");
		builder.append(email);
		builder.append(", phone=");
		builder.append(phone);
		builder.append(", role=");
		builder.append(role);
		builder.append(", name=");
		builder.append(name);
		builder.append(", major=");
		builder.append(major);
		builder.append(", soluongbaidang=");
		builder.append(soluongbaidang);
		builder.append(", address=");
		builder.append(address);
	
		builder.append(", twitter=");
		builder.append(twitter);
		builder.append(", facebook=");
		builder.append(facebook);
		builder.append(", website=");
		builder.append(website);
		builder.append(", background=");
		builder.append(background);
		builder.append(", linkedin=");
		builder.append(linkedin);
		
		builder.append(", ready=");
		builder.append(ready);
		builder.append("]");
		return builder.toString();
	}


	public int getCountEvaluate() {
		return countEvaluate;
	}


	public void setCountEvaluate(int countEvaluate) {
		this.countEvaluate = countEvaluate;
	}


	public boolean isReady() {
		return ready;
	}
	

	public int getCountJobFinish() {
		return countJobFinish;
	}


	public void setCountJobFinish(int countJobFinish) {
		this.countJobFinish = countJobFinish;
	}


	public void setReady(boolean ready) {
		this.ready = ready;
	}


	public static boolean validName(String name) {
		String expression = "^\\p{L}+[\\p{L}\\p{Z}\\p{P}]{0,}";
		return name.matches(expression);
	}

	public static boolean validPassword(String password) {
		String expression = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{8,20}$";
		return password.matches(expression);
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
	public String getStarAverage() {
		if(countEvaluate<=0)return "0";
		double rs=(double)star/(double) countEvaluate;
		NumberFormat formatter = new DecimalFormat("#0.00");     
		return formatter.format(rs);
	}


	public int getCountHired() {
		return countHired;
	}


	public void setCountHired(int countHired) {
		this.countHired = countHired;
	}
	

}
