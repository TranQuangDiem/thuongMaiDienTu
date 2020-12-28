package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import customutil.StringHelper;

public class ForgotPasswordDAO {
	public static String insert(int idAcc) {
		StringBuilder sb = new StringBuilder(StringHelper.getAlphaNumericString(15));
		while (isKeyExists(sb.toString()))
			sb = sb.replace(0, sb.length() - 1, StringHelper.getAlphaNumericString(15));
		try {
			if (hasUserForgotn(idAcc))
				delete(idAcc);
			String query = "INSERT INTO forgotpassword (forgotpassword.id,forgotpassword.`key`) VALUES (?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setInt(1, idAcc);
			ps.setString(2, sb.toString());
			if(ps.executeUpdate()!=1) {
				ps.close();
				return "";
			}
			ps.close();
			return sb.toString();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return "";
		}
	}

	public static boolean isKeyExists(String key) {
		try {
			String query = "SELECT f.id FROM forgotpassword AS f WHERE f.`key`=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setString(1, key);
			ResultSet rs = ps.executeQuery();
			boolean result = rs.next();
			ps.close();
			return result;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return true;
		}
	}

	public static void delete(int idUser) {
		try {
			String query = "DELETE FROM forgotpassword WHERE forgotpassword.id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setInt(1, idUser);
			ps.executeUpdate();
			ps.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public static boolean hasUserForgotn(int idUser) {
		try {
			String query = "SELECT f.id FROM forgotpassword AS f WHERE f.id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setInt(1, idUser);
			ResultSet rs = ps.executeQuery();
			boolean result = rs.next();
			ps.close();
			return result;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return true;
		}
	}

}
