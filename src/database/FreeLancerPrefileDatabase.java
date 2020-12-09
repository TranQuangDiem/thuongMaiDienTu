package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import database.model.Account;
import database.model.Evaluate;

public class FreeLancerPrefileDatabase {
	
	public static List<Evaluate> getEvaluate(int id_freelancer) {
		List<Evaluate> rs= new ArrayList<Evaluate>();
		try {
			String sql="select id, id_account, time, star, content from evaluate where id_freelancer=? ";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_freelancer);
			ResultSet rsSet=ps.executeQuery();
			while(rsSet.next()) {
				int id_account= rsSet.getInt(2);
				Account account = UtilDataBase.getAccount(id_account);
				Evaluate e = new Evaluate(rsSet.getInt(1),account, rsSet.getTimestamp(3), 
						rsSet.getFloat(4), rsSet.getString(5));
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
	public static void main(String[] args) {
		getEvaluate(1);
	}

}
