package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Subscriber;

public class JobApplyDetailDatabase {
	public static List<Subscriber> getNewSubscribers(int id_job, int last_id_subscriber) {
		List<Subscriber> rs= new ArrayList<Subscriber>();
		try {
			String sql="select id, id_account, time, star, content from evaluate where id_freelancer=? ";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_job);
			ResultSet rsSet=ps.executeQuery();
			while(rsSet.next()) {
				//int id_account= rsSet.getInt(2);
//				Account account = UtilDataBase.getAccount(id_account);
//				Evaluate e = new Evaluate(rsSet.getInt(1),account, rsSet.getTimestamp(3), 
//						rsSet.getInt(4), rsSet.getString(5));
//				rs.add(e);
//				 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
//				System.out.println(formatter.format(e.getTime()));
				
			}
			ConnectionDB.close(rsSet);
			
			
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return rs;
	}
	public static List<Subscriber> getSubscribers(int id_job, int numberPage) {
		List<Subscriber> rs= new ArrayList<Subscriber>();
		try {
			String sql="select id, id_account, date_apply, apply  from subscriber where id_job=? order by date_apply desc limit ?,?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_job);
			ps.setInt(2, numberPage*5);
			ps.setInt(3, (numberPage+1)*5);
			ResultSet rsSet=ps.executeQuery();
			while(rsSet.next()) {
				
				Subscriber subscriber= new Subscriber();
				subscriber.setId(rsSet.getInt(1));
				subscriber.setAccount(UtilDataBase.getAccount(rsSet.getInt(2)));
				subscriber.setDateApply(rsSet.getTimestamp(3));
				subscriber.setApply(rsSet.getInt(4));
				subscriber.setJob(UtilDataBase.getJob(id_job));
				
				rs.add(subscriber);
				
				
			}
			ConnectionDB.close(rsSet);
			
			
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return rs;
	}
}
