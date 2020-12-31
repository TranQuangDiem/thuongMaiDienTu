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
	private	String tencongviec;
	private String chitiet;
	private String img;
	private int soluongtuyen;
	private Date ngaydang;
}
