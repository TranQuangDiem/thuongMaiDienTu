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

	public static String limitWords(String input, int maxlength) {
		if (input.length() <= maxlength) {
			return input;
		} else {
			StringBuilder sb = new StringBuilder(input.substring(0, maxlength));
			sb.append("...");
			return sb.toString();
		}

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

	public static String htmlEmailWelJob(int id, String urlDetailJob) {
		String rs = "<html><p>Chào các bạn freelancer</p>"
				+ "<p>Hiện tại đang có một công việc rất phù hợp với bạn nhấn vào đường link bên dưới để biết thêm chi tiết:</p>"
				+ "<a href=\"" + urlDetailJob + "\"" + ">XEM CHI TIẾT CÔNG VIỆC</a></html>";

		return rs;
	}
	public static void main(String[] args) {
		System.out.println("Dựng nhân vật 3D chibi đơn giản để in 3D...".length());
	}

}
