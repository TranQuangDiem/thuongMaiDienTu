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
		return toCheck.trim().equals("") || toCheck == null || toCheck.trim().isEmpty();
	}

}
