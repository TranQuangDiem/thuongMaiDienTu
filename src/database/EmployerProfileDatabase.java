package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import model.Account;
import model.Evaluate;
import model.Job;

public class EmployerProfileDatabase {
	// url /employer-profile?id_employer=1 // Để url để test chứ có nhớ đâu
	public static void delete(int id) {
		try {
			String sql= "delete from account where id="+id;
			PreparedStatement ps =ConnectionDB.prepareStatement(sql);
			ps.executeUpdate(sql);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static List<Account> findAllEmployer(){
		List<Account> account = new ArrayList<Account>();
		try {
			String sql = "select * from account where role=1";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rs =ps.executeQuery(sql);
			while (rs.next()) {
				Account a  = new Account(rs.getInt(1), rs.getString(4), rs.getString(8), rs.getString(9), countJob(rs.getInt(1)));
			account.add(a);
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return account;
	}
	
	public static Account information(int id_employer) {
		Account taikhoan = null;
		int count = countJob(id_employer);
		try {
			String sql = "select username, password, fullname, image, star_average,about,email,phone, role, name, major, twitter, facebook, website, background, id_address, address from account where id=? and role=1";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_employer);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				taikhoan = new Account();
				taikhoan.setId(id_employer);
				taikhoan.setUsername(rs.getString(1));
				taikhoan.setPassword(rs.getString(2));
				taikhoan.setFullname(rs.getString(3));
				taikhoan.setImage(rs.getBlob(4));
				taikhoan.setStarAverage(rs.getFloat(5));
				taikhoan.setAbout(rs.getString(6));
				// taikhoan.setAbout(getLargerString(rsSet, 6));
				taikhoan.setEmail(rs.getString(7));
				taikhoan.setPhone(rs.getString(8));
				taikhoan.setRole(rs.getInt(9));
				taikhoan.setName(rs.getString(10));
				taikhoan.setMajor(rs.getString(11));
				taikhoan.setTwitter(rs.getString(12));
				taikhoan.setFacebook(rs.getString(13));
				taikhoan.setWebsite(rs.getString(14));
				taikhoan.setBackground(rs.getBlob(15));
				//taikhoan.setAddress(UtilDataBase.getAddress(rs.getInt(16)));
				taikhoan.setAddressString(rs.getString(17));
			}
			ConnectionDB.close(rs);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return taikhoan;
		
	}
	public static List<Job> listjobEmployer(int id_employer) {
		List<Job> danhsachcongviec = new ArrayList<Job>();
		try {
			String sql="select * from job where idAccount=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_employer);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				/** Load Job */
//				Job j = new Job(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(6), rs.getInt(7),rs.getDate(8));
//				danhsachcongviec.add(j);
			}
			ConnectionDB.close(rs);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return danhsachcongviec;
		
	}
	public static int countJob(int id_employer) {
		int count =0;
		try {
			String sql = "SELECT COUNT(*) from job WHERE idAccount=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_employer);
			ResultSet rs = ps.executeQuery();
			rs.next();
			count=rs.getInt(1);
		}catch (Exception e) {
			// TODO: handle exception
		}
		return count;
	}
	//update
	public static void update(Account account,int id_employer) {
		try {
			String sql = "update account set name=?,major=?,email=?,phone=?,address=?,about=? where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setString(1, account.getName());
			ps.setString(2, account.getMajor());
			ps.setString(3, account.getEmail());
			ps.setString(4, account.getPhone());
			ps.setString(5, account.getAddressString());
			ps.setString(6, account.getAbout());
			ps.setInt(7,id_employer); 
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	//đánh giá
	public static List<Evaluate> getEvaluate(int id_freelancer) {
		List<Evaluate> rs = new ArrayList<Evaluate>();
		try {
			String sql = "select id, id_account, time, star, content from evaluate where id_freelancer=? ";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_freelancer);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				int id_account = rsSet.getInt(2);
				Account account = UtilDataBase.getAccount(id_account);
				Evaluate e = new Evaluate(rsSet.getInt(1), account, rsSet.getTimestamp(3), rsSet.getInt(4),
						rsSet.getString(5));
				rs.add(e);
//				 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
//				System.out.println(formatter.format(e.getTime()));

			}
			ConnectionDB.close(rsSet);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

	public static List<Evaluate> getEvaluate(int id_employer, int numberPage) {
		List<Evaluate> rs = new ArrayList<Evaluate>();
		try {
			String sql = "select id, id_account, time, star, content from evaluate where id_freelancer=? order by time desc limit ?,?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_employer);
			ps.setInt(2, numberPage * 5);
			ps.setInt(3, (numberPage + 1) * 5);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				int id_account = rsSet.getInt(2);
				Account account = UtilDataBase.getAccount(id_account);
				Evaluate e = new Evaluate(rsSet.getInt(1), account, rsSet.getTimestamp(3), rsSet.getInt(4),
						rsSet.getString(5));
				rs.add(e);
//				 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
//				System.out.println(formatter.format(e.getTime()));

			}
			ConnectionDB.close(rsSet);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

	public static int insertEvaluate(int id_employer, Evaluate evaluate) {
		int rs = 0;
		try {
			String sql = "insert  into evaluate(id_account,id_freelancer,time,star,content)" + " values(?,?,?,?,?);";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, evaluate.getAccount().getId());
			ps.setInt(2, id_employer);
			ps.setTimestamp(3, new Timestamp(evaluate.getTime().getTime()));
			ps.setInt(4, evaluate.getStar());
			ps.setString(5, evaluate.getContent());
			rs = ps.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

	public static void main(String[] args) {
		getEvaluate(1);
	}

}
