package customutil;

import java.util.List;

import dataform.FormCreateJob;

public class StringHelper {
	public static boolean isListStringNull(List<String> toCheck) {
		for (String field : toCheck) {
			if (isStringNull(field))
				return true;
		}
		return false;
	}

	public static boolean isStringNull(String toCheck) {
		return toCheck == null || toCheck.isEmpty() || toCheck.equals("") || toCheck.trim().equals("")
				|| toCheck.trim().isEmpty();
	}

	public static String getAlphaNumericString(int n) {
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";
		StringBuilder sb = new StringBuilder(n);

		for (int i = 0; i < n; i++) {
			int index = (int) (AlphaNumericString.length() * Math.random());
			sb.append(AlphaNumericString.charAt(index));
		}

		return sb.toString();
	}

	public static  String  htmlEmailWelJob (int id,String urlDetailJob) {
		String rs="<html><p>Chào các bạn freelancer</p>"+
	"<p>Hiện tại đang có một công việc rất phù hợp với bạn nhấn vào đường link bên dưới để biết thêm chi tiết:</p>"
				+"<a href=\""+urlDetailJob+"\""+">XEM CHI TIẾT CÔNG VIỆC</a></html>";
		
		return rs;
	}

}
