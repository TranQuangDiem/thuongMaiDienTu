package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import model.Account;
import model.Evaluate;
import model.Job;
import model.Pricing;
import model.Subscriber;

public class UtilDataBase {
	public static Account getAccount(int id_account) {
		Account rs =null;
		try {
			String sql="select username, password, fullname, image, star_average from account where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_account);
			ResultSet rsSet=ps.executeQuery();
			while(rsSet.next()) {
				rs= new Account();
				rs.setId(id_account);
				rs.setUsername(rsSet.getString(1));
				rs.setPassword(rsSet.getString(2));
				rs.setFullname(rsSet.getString(3));
				rs.setImage(rsSet.getString(4));
				rs.setStarAverage(rsSet.getFloat(5));
//				System.out.println(rs.toString());
				
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return rs;
	}
	
	public static List<Pricing> getPricing () {
		List<Pricing> danhsachgoi = new ArrayList<Pricing>();
		try {
			String sql= "select * from goibaidang ";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Pricing p = new Pricing(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
				danhsachgoi.add(p);
			}
			ConnectionDB.close(rs);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return danhsachgoi;
	}
	public static Job getJob(int id_job) {
		Job rs =null;
		try {
			String sql="select id  from job where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_job);
			ResultSet rsSet=ps.executeQuery();
			while(rsSet.next()) {
				rs= new Job();
				rs.setId(rsSet.getInt(1));
				
				
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return rs;
	}
	public static Subscriber getSubscriber(int id_subscriber) {
		Subscriber subscriber =null;
		try {
			String sql="select id, id_account, date_apply, apply, id_job  from subscriber where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_subscriber);
			ResultSet rsSet=ps.executeQuery();
			while(rsSet.next()) {
				subscriber= new Subscriber();
				subscriber.setId(rsSet.getInt(1));
				subscriber.setAccount(getAccount(rsSet.getInt(2)));
				subscriber.setDateApply(rsSet.getTimestamp(3));
				subscriber.setApply(rsSet.getInt(4));
				subscriber.setJob(getJob(rsSet.getInt(5)));
				
				
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return subscriber;
	}
	public static void main(String[] args) {
		System.out.println(getSubscriber(1));
	}

}
