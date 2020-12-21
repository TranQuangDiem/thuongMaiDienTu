package dataform;


import java.io.IOException;


import javax.imageio.ImageIO;

import org.springframework.web.multipart.MultipartFile;

import model.Account;
import model.Address;

public class FormSettingsFreelancer {
	private int idAccount;
	private String fullname;
	private MultipartFile image;
	private String twitter;
	private String facebook;
	private String website;
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
	@Override
	public String toString() {
		return "FormSettingsFreelancer [idAccount=" + idAccount + ", fullname=" + fullname + ", image=" + image
				+ ", twitter=" + twitter + ", facebook=" + facebook + ", website=" + website + ", background="
				+ background + ", address=" + address + ", about=" + about + ", email=" + email + ", phone=" + phone
				+ ", major=" + major + "]";
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
	
	
	

}
