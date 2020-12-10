package model;

public class Account {
	int id;
	String username;
	String password;
	String fullname;
	String image;
	
	
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
	@Override
	public String toString() {
		return "Account [id=" + id + ", username=" + username + ", password=" + password + ", fullname=" + fullname
				+ ", image=" + image + "]";
	}
	
	

}
