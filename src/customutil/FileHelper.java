package customutil;

import java.sql.SQLException;
import java.util.Base64;


public class FileHelper {
	public static String convertImgToString(java.sql.Blob blob) {
		try {
			if (blob != null) {
				int length = (int) blob.length();
				byte[] bytes = blob.getBytes(1, length);
				return Base64.getEncoder().encodeToString(bytes);
			} else {
				return null;
			}

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
