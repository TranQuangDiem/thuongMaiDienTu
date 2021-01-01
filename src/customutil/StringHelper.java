package customutil;

import java.util.List;

public class StringHelper {
	public static boolean isListStringNull(List<String> toCheck) {
		for (String field : toCheck) {
			if (isStringNull(field))
				return true;
		}
		return false;
	}

	public static boolean isStringNull(String toCheck) {
		return toCheck.equals("") || toCheck.trim().equals("") || toCheck == null || toCheck.trim().isEmpty()|| toCheck.isEmpty();
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

}
