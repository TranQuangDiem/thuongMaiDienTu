package dataform;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class FormCreateJob {
	MultipartFile img;
	String jobname;
	String ls_province;
	String finishday;
	String jobdescription;
	String education;
	String exp;
	String language;
	int major;
	int jobtype;
	int quantity;

}
