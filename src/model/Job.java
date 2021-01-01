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
@Getter @Setter
@ToString
public class Job {
	public static final int STATUS_OPEN=1;
	public static final int STATUS_CLOSE=0;
	private int id;
	private	String jobTitle;
	private String jobDescription;
	private int idAcc;
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
}
