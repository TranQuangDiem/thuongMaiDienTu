package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import customutil.FileHelper;
import model.Account;
import model.Address;
import model.Evaluate;
import model.Job;

public class EmployerProfileDatabase {
	// url /employer-profile?id_employer=1 // Để url để test chứ có nhớ đâu
	public static void delete(int id) {
		try {
			String sql = "delete from account where id=" + id;
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public static List<Account> findAllEmployer() {
		List<Account> account = new ArrayList<Account>();
		try {
			String sql = "select * from account where role=1";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rs = ps.executeQuery(sql);
			while (rs.next()) {
				Account a = new Account(rs.getInt(1), rs.getString(4), rs.getString(8), rs.getString(9),
						countJob(rs.getInt(1)));
				account.add(a);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return account;
	}

	public static List<Job> listjobEmployer(int id_employer) {

		try {
			List<Job> congviecdadang = new ArrayList<>();
			String query="SELECT *  FROM job  WHERE idAccount = ? ";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setInt(1, id_employer);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Account acc = new Account();
				Job job = new Job();
				job.setJobTitle(rs.getString(2));
				job.setJobDescription(rs.getString(3));
				job.setImg(FileHelper.convertImgToString(rs.getBlob(5)));
				job.setCreateday(rs.getDate(7));
				job.setCity(rs.getString(15));
				

				congviecdadang.add(job);
			}
			return congviecdadang;
		} catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<Job>();
		}

	}


	public static int countJob(int id_employer) {
		int count = 0;
		try {
			String sql = "SELECT COUNT(*) from job WHERE idAccount=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_employer);
			ResultSet rs = ps.executeQuery();
			rs.next();
			count = rs.getInt(1);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return count;
	}

	// update
	public static void update(Account account) {
		String sql;
		PreparedStatement ps = null;
		// Start update regular field
		try {
			sql = "update account set fullname=?,major=?,email=?,phone=?,about=?, email=?, facebook=?, website=?, twitter=?, ready=? where id=?";
			ps = ConnectionDB.prepareStatement(sql);
			ps.setString(1, account.getFullname());
			ps.setString(2, account.getMajor());
			ps.setString(3, account.getEmail());
			ps.setString(4, account.getPhone());
			
			ps.setString(5, account.getAbout());
			ps.setString(6, account.getEmail());
			ps.setString(7, account.getFacebook());
			ps.setString(8, account.getWebsite());
			ps.setString(9, account.getTwitter());
			ps.setInt(10, (account.isReady()) ? 1 : 0);
			ps.setInt(11, account.getId());
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		// Start update address
		try {
			Address address = account.getAddress();
			// Check address
			if (address.getId() == 0) {
				sql = "insert into address(province, district, ward,detail_address, id_account) values (?,?,?,?,?)";
				ps = ConnectionDB.prepareStatement(sql);

				ps.setString(1, address.getProvince());
				ps.setString(2, address.getDistrict());
				ps.setString(3, address.getWard());
				ps.setString(4, address.getDetailAddress());
				ps.setInt(5, account.getId());
				ps.executeUpdate();

			} else {
				sql = "update address set province=?, district=?, ward=?,detail_address=? where id=?";
				ps = ConnectionDB.prepareStatement(sql);

				ps.setString(1, address.getProvince());
				ps.setString(2, address.getDistrict());
				ps.setString(3, address.getWard());
				ps.setString(4, address.getDetailAddress());
				ps.setInt(5, address.getId());
				ps.executeUpdate();

			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		// Start update image
		if (account.getImage() != null)
			try {
				sql = "update account set image=? where id=?";
				ps = ConnectionDB.prepareStatement(sql);

				ps.setBlob(1, UtilImage.covertInputStream(account.getImage()));

				ps.setInt(2, account.getId());

				ps.executeUpdate();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		// Start update background
		if (account.getBackground() != null)
			try {
				sql = "update account set background=? where id=?";
				ps = ConnectionDB.prepareStatement(sql);

				ps.setBlob(1, UtilImage.covertInputStream(account.getBackground()));

				ps.setInt(2, account.getId());

				ps.executeUpdate();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		try {
			ps.getConnection().close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

	// đánh giá
	public static List<Evaluate> getEvaluate(int id_account) {
		List<Evaluate> rs = new ArrayList<Evaluate>();
		try {
			String sql = "select id, id_guest, time, star, content from evaluate where id_account=? ";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_account);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				int id_guest = rsSet.getInt(2);
				Account guest = UtilDataBase.getAccount(id_guest);
				Evaluate e = new Evaluate();
				e.setId(rsSet.getInt(1));
				e.setGuest(guest);
				e.setTime(rsSet.getTimestamp(3));
				e.setStar(rsSet.getInt(4));
				e.setContent(rsSet.getString(5));
				rs.add(e);

//						 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
//						System.out.println(formatter.format(e.getTime()));

			}
			ConnectionDB.close(rsSet);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

	public static List<Evaluate> getEvaluate(int id_account, int numberPage) {
		List<Evaluate> rs = new ArrayList<Evaluate>();
		try {
			String sql = "select id, id_guest, time, star, content from evaluate where id_account=? order by time desc limit ?,?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_account);
			ps.setInt(2, numberPage * 5);
			ps.setInt(3, (numberPage + 1) * 5);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				int id_guest = rsSet.getInt(2);
				Account guest = UtilDataBase.getAccount(id_guest);
				Evaluate e = new Evaluate();
				e.setId(rsSet.getInt(1));
				e.setGuest(guest);
				e.setTime(rsSet.getTimestamp(3));
				e.setStar(rsSet.getInt(4));
				e.setContent(rsSet.getString(5));

				rs.add(e);
//						 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
//						System.out.println(formatter.format(e.getTime()));

			}
			ConnectionDB.close(rsSet);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

	public static synchronized boolean insertEvaluate(int id_account, Evaluate evaluate) {
		boolean rs = false;
		String sql;
		PreparedStatement ps;
		Connection con;
		Account account = UtilDataBase.getAccount(id_account);
		try {
			sql = "insert  into evaluate(id_account, id_guest,time,star,content)" + " values(?,?,?,?,?);";
			ps = ConnectionDB.prepareStatement(sql);
			con = ps.getConnection();
			con.setAutoCommit(false);
			// insert
			ps.setInt(2, evaluate.getGuest().getId());
			ps.setInt(1, id_account);
			ps.setTimestamp(3, new Timestamp(evaluate.getTime().getTime()));
			ps.setInt(4, evaluate.getStar());
			ps.setString(5, evaluate.getContent());
			rs = (ps.executeUpdate() == 1);

			// update count
			if (rs) {
				sql = "update account set star=?, count_evaluate=? where star=? and count_evaluate=? and id=?";
				ps = ConnectionDB.prepareStatement(sql);
				ps.setInt(1, account.getStar() + evaluate.getStar());
				ps.setInt(2, account.getCountEvaluate() + 1);
				ps.setInt(3, account.getStar());
				ps.setInt(4, account.getCountEvaluate());
				ps.setInt(5, account.getId());

				rs = (ps.executeUpdate() == 1);
				if (!rs) {
					con.rollback();
				}

			} else {
				con.rollback();

			}
			con.setAutoCommit(true);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

	public static boolean isEnoughInfo(int id) {
		try {

			return false;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
