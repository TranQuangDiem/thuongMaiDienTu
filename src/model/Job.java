package model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;



@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Job {
	/* JOB STATUS */
	public static final int STATUS_OPEN = 1;
	public static final int STATUS_CLOSE = 0;
	/* JOB TYPE */
	public static final int TYPE_PROJECT = 1;
	public static final int TYPE_PARTTIME = 2;
	public static final int TYPE_FULLTIME = 3;
	public static final int TYPE_CONTEST = 4;
	private int id;
	private String jobTitle;
	private String jobDescription;
	private int jobType;
	private Account ofAccount;
	private String img;
	private int soluongtuyen;
	private Date createday;
	private Date finishday;
	private int view;
	private String major;
	private String language;
	private String exp;
	private String education;
	private int status;
	private String city;

	public String toStringOfJobType(int jobtype) {
		switch (jobtype) {
		case TYPE_PROJECT:
			return "Làm Việc Theo Dự Án";
		case TYPE_PARTTIME:
			return "Làm Việc Bán Thời Gian";
		case TYPE_FULLTIME:
			return "Làm Việc Toàn Thời Gian";
		case TYPE_CONTEST:
			return "Cuộc Thi Thiết Kế";
		default:
			return null;
		}
	}
	
	
}
