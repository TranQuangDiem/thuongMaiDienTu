package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

	public static Account getByUsername(String username) {
		try {
			String query = "select id,username, account.`password`, fullname, image, star,about,email,phone, role, account.`name`, major, twitter, facebook, website, background,linkedin,ready,count_job,count_evaluate from account where username=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				Account acc = new Account();
				acc.setId(rs.getInt(1));
				acc.setUsername(rs.getString(2));
				acc.setPassword(rs.getString(3));
				acc.setFullname(rs.getString(4));
				acc.setImage(rs.getBlob(5) == null ? null : rs.getBlob(4));
				acc.setStar(rs.getInt(6));
				acc.setAbout(rs.getString(7));
				acc.setEmail(rs.getString(8));
				acc.setPhone(rs.getString(9));
				acc.setRole(rs.getInt(10));
				acc.setName(rs.getString(11));
				acc.setMajor(rs.getString(12));
				acc.setTwitter(rs.getString(13));
				acc.setFacebook(rs.getString(14));
				acc.setWebsite(rs.getString(15));
				acc.setBackground(rs.getBlob(16) == null ? null : rs.getBlob(15));
				acc.setAddress(UtilDataBase.getAddress(rs.getInt(1)));
				acc.setLinkedin(rs.getString(16));
				acc.setReady(rs.getInt(17) == 1);
				acc.setCountJob(rs.getInt(18));
				acc.setCountEvaluate(rs.getInt(19));
				return acc;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static String[] getEmailsByMajor(String major) {
		try {
			List<String> arrString = new ArrayList<String>();
			String query = "SELECT account.email FROM account WHERE account.role=2 AND account.major=? AND account.ready=1";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			// set
			ps.setString(1, major);
			//
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				arrString.add(rs.getString(1));
			}
			ps.close();
			if(arrString.size()==0) {
				return null;
			}
			return arrString.toArray(new String[arrString.size()]);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
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
			String sql = "INSERT INTO account (account.username,account.`password`,account.fullname,account.email,account.role,account.ready) VALUES (?,MD5(?),?,?,?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, fullname);
			ps.setString(4, emailnew);
			ps.setInt(5, rolenew);
			ps.setInt(6, 1);
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
			String sql = "select username, account.`password`, fullname, image, star,about,email,phone, role, account.`name`, major, twitter, facebook, website, background,linkedin,ready,count_job,count_evaluate from account where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rsSet = ps.executeQuery();
			if (rsSet.next()) {
				rs = new Account();
				rs.setId(id);
				rs.setUsername(rsSet.getString(1));
				rs.setPassword(rsSet.getString(2));
				rs.setFullname(rsSet.getString(3));
				rs.setImage(rsSet.getBlob(4) == null ? null : rsSet.getBlob(4));
				rs.setStar(rsSet.getInt(5));
				rs.setAbout(rsSet.getString(6));
				rs.setEmail(rsSet.getString(7));
				rs.setPhone(rsSet.getString(8));
				rs.setRole(rsSet.getInt(9));
				rs.setName(rsSet.getString(10));
				rs.setMajor(rsSet.getString(11));
				rs.setTwitter(rsSet.getString(12));
				rs.setFacebook(rsSet.getString(13));
				rs.setWebsite(rsSet.getString(14));
				rs.setBackground(rsSet.getBlob(15) == null ? null : rsSet.getBlob(15));
				rs.setAddress(UtilDataBase.getAddress(id));
				rs.setLinkedin(rsSet.getString(16));
				rs.setReady(rsSet.getInt(17) == 1);
				rs.setCountJob(rsSet.getInt(18));
				rs.setCountEvaluate(rsSet.getInt(19));
			}
			return rs;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}

	}

}
