package dataform;


import java.io.IOException;


import javax.imageio.ImageIO;

import org.springframework.web.multipart.MultipartFile;

import model.Account;
import model.Address;

public class FormSettingsEmployer {
	private int idAccount;
	private String fullname;
	private MultipartFile image;
	private String twitter;
	private String facebook;
	private String website;
	private boolean ready;
	private MultipartFile background;
	private Address address;
	private String about;
	private String email;
	private String phone;
	private String major;
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
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
	public MultipartFile getBackground() {
		return background;
	}
	public void setBackground(MultipartFile background) {
		this.background = background;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
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
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public int getIdAccount() {
		return idAccount;
	}
	public void setIdAccount(int idAccount) {
		this.idAccount = idAccount;
	}
	
	public boolean isReady() {
		return ready;
	}
	public void setReady(boolean ready) {
		this.ready = ready;
	}
	public Account toAccount() {
		Account account= new Account();
		account.setId(idAccount);
		account.setAddress(address);
		account.setFacebook(facebook);
		account.setFullname(fullname);
		account.setAbout(about);
		account.setMajor(major);
		account.setPhone(phone);
		account.setEmail(email);
		account.setTwitter(twitter);
		account.setWebsite(website);
		account.setReady(ready);
		try {
			account.setImage(ImageIO.read(image.getInputStream()));
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		try {
			account.setBackground(ImageIO.read(background.getInputStream()));
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		
		return account;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("FormSettingsFreelancer [idAccount=");
		builder.append(idAccount);
		builder.append(", fullname=");
		builder.append(fullname);
		builder.append(", image=");
		builder.append(image);
		builder.append(", twitter=");
		builder.append(twitter);
		builder.append(", facebook=");
		builder.append(facebook);
		builder.append(", website=");
		builder.append(website);
		builder.append(", ready=");
		builder.append(ready);
		builder.append(", background=");
		builder.append(background);
		builder.append(", address=");
		builder.append(address);
		builder.append(", about=");
		builder.append(about);
		builder.append(", email=");
		builder.append(email);
		builder.append(", phone=");
		builder.append(phone);
		builder.append(", major=");
		builder.append(major);
		builder.append("]");
		return builder.toString();
	}
	
	
	

}
