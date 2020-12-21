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

	public static boolean isEmailExists(String email) {
		try {
			String query = "SELECT email FROM account WHERE account.email=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			boolean check = rs.next();
			ps.close();
			return check;
		} catch (Exception e) {
			e.printStackTrace();
			return true;
		}
	}

	public static int getIdAccByUsername(String username) {
		try {
			String query = "SELECT account.id FROM account WHERE account.username=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			rs.first();
			return rs.getInt(1);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public static boolean addAccountByRegister(String username, String password, String fullname, String emailnew,int rolenew) {
		try {
			String sql = "INSERT INTO account (account.username,account.`password`,account.fullname,account.email,account.role) VALUES (?,MD5(?),?,?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, fullname);
			ps.setString(4, emailnew);
			ps.setInt(5, rolenew);
			return ps.executeUpdate() == 1;
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
			return true;
		}
	}

	public static boolean checkLogin(String username, String password) {
		try {
			String query = "SELECT account.id FROM account WHERE account.username=? AND account.`password`=MD5(?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			return rs.next();
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			return false;
		}
	}

	public static Account getUserById(int id) {
		Account rs = null;
		try {
			String sql = "select username, password, fullname, image, star_average,about,email,phone, role, name, major, twitter, facebook, website, background, id_address from account where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				rs = new Account();
				rs.setId(id);
				rs.setUsername(rsSet.getString(1));
				rs.setPassword(rsSet.getString(2));
				rs.setFullname(rsSet.getString(3));
				rs.setImage(rsSet.getBlob(4));
				rs.setStarAverage(rsSet.getFloat(5));
				rs.setAbout(rsSet.getString(6));
				rs.setEmail(rsSet.getString(7));
				rs.setPhone(rsSet.getString(8));
				rs.setRole(rsSet.getInt(9));
				rs.setName(rsSet.getString(10));
				rs.setMajor(rsSet.getString(11));
				rs.setTwitter(rsSet.getString(12));
				rs.setFacebook(rsSet.getString(13));
				rs.setWebsite(rsSet.getString(14));
				rs.setBackground(rsSet.getBlob(15));
				rs.setAddress(UtilDataBase.getAddress(rsSet.getInt(16)));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

}
