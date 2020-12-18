package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Account;
import model.Evaluate;

public class AccountDAO {
	public static boolean loginDAO(String username, String password) {
		return false;
	}

	public static String registerDAO(String username, String password, String fullname) {
		if (Account.validName(fullname)) {

		}
		return "";
	}

	public boolean addAccountByRegister(String username, String password, String fullname) {
		try {
			String sql = "INSERT INTO account (account.username,account.`password`,account.fullname) VALUES (?, MD5(?), ?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, fullname);
			return ps.execute();
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return false;
		}

	}

	public static boolean isUsernameExists(String username) {
		try {
			String query = "SELECT username FROM account WHERE account.username=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			boolean check = rs.next();
			ps.close();
			return check;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

}
