package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Account;
import model.Evaluate;

public class AccountDAO {

	public static boolean updatePassword(String newpassword, int id) {
		try {
			String query = "UPDATE account SET account.`password`=MD5(?) WHERE account.id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setString(1, newpassword);
			ps.setInt(2, id);
			int row = ps.executeUpdate();
			ps.close();
			return row == 1;
		} catch (Exception e) {
			return false;
		}
	}

	public static int getIdByEmail(String email) {
		try {
			String query = "SELECT account.id FROM account WHERE account.email=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			rs.next();
			int result = rs.getInt(1);
			ps.close();
			return result;
		} catch (Exception e) {
			return -1;
		}
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

	public static boolean addAccountByRegister(String username, String password, String fullname, String emailnew,
			int rolenew) {
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
		try {
			Account rs = null;
			String sql = "select username, account.`password`, fullname, image, star_average,about,email,phone, role, account.`name`, major, twitter, facebook, website, background, id_address,linkedin,balance from account where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rsSet = ps.executeQuery();
			if (rsSet.next()) {
				rs = new Account();
				rs.setId(id);
				rs.setUsername(rsSet.getString(1));
				rs.setPassword(rsSet.getString(2));
				rs.setFullname(rsSet.getString(3));
				rs.setImage(rsSet.getBlob(4)==null?null:rsSet.getBlob(4));
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
				rs.setBackground(rsSet.getBlob(4)==null?null:rsSet.getBlob(4));
				rs.setAddress(UtilDataBase.getAddress(rsSet.getInt(16)));
				rs.setLinkedin(rsSet.getString(17));
			}
			return rs;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
		
	}

}
