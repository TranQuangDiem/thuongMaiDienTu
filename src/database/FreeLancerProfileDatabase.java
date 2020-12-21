package database;

import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import model.Account;
import model.Evaluate;

public class FreeLancerProfileDatabase {

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

	public static List<Evaluate> getEvaluate(int id_freelancer, int numberPage) {
		List<Evaluate> rs = new ArrayList<Evaluate>();
		try {
			String sql = "select id, id_account, time, star, content from evaluate where id_freelancer=? order by time desc limit ?,?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_freelancer);
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

	public static int insertEvaluate(int id_freelancer, Evaluate evaluate) {
		int rs = 0;
		try {
			String sql = "insert  into evaluate(id_account,id_freelancer,time,star,content)" + " values(?,?,?,?,?);";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, evaluate.getAccount().getId());
			ps.setInt(2, id_freelancer);
			ps.setTimestamp(3, new Timestamp(evaluate.getTime().getTime()));
			ps.setInt(4, evaluate.getStar());
			ps.setString(5, evaluate.getContent());
			rs = ps.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}
	public static void update(Account account) {
		String sql ;
		PreparedStatement ps =null;
		//Start update regular field
		try {
			sql = "update account set fullname=?,major=?,email=?,phone=?,address=?,about=?, email=?, facebook=?, website=?, twitter=? where id=?";
			ps = ConnectionDB.prepareStatement(sql);
			ps.setString(1, account.getFullname());
			ps.setString(2, account.getMajor());
			ps.setString(3, account.getEmail());
			ps.setString(4, account.getPhone());
			ps.setString(5, account.getAddressString());
			ps.setString(6, account.getAbout());
			ps.setString(7, account.getEmail());
			ps.setString(8, account.getFacebook());
			ps.setString(9, account.getWebsite());
			ps.setString(10, account.getTwitter());
			ps.setInt(11,account.getId()); 
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		//Start update image
		if(account.getImage()!=null)
		try {
			sql = "update account set image=? where id=?";
			ps = ConnectionDB.prepareStatement(sql);
			
			ps.setBlob(1, UtilImage.covertInputStream(account.getImage()));
			
			ps.setInt(2, account.getId());
			
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		//Start update background
		if(account.getBackground()!=null)
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

	public static void main(String[] args) {
		getEvaluate(1);
	}

}
