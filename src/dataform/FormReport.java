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

public class FormReport {
	MultipartFile img1;
	MultipartFile img2;
	MultipartFile img3;
	int id_report;
	int id_employer;
	int id_reported;
	String title;
	String content;

}
