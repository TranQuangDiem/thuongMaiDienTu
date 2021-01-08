package dataform;




import org.springframework.web.multipart.MultipartFile;



public class FormApplyJob {
	private int idJob;
	private String fullname;
	private MultipartFile cv;
	private String about;
	private String email;
	
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
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
	public MultipartFile getCv() {
		return cv;
	}
	public void setCv(MultipartFile cv) {
		this.cv = cv;
	}
	public int getIdJob() {
		return idJob;
	}
	public void setIdJob(int idJob) {
		this.idJob = idJob;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("FormApplyJob [idJob=");
		builder.append(idJob);
		builder.append(", fullname=");
		builder.append(fullname);
		builder.append(", cv=");
		builder.append(cv);
		builder.append(", about=");
		builder.append(about);
		builder.append(", email=");
		builder.append(email);
		builder.append("]");
		return builder.toString();
	}
	
	
	
	
	
	

}
