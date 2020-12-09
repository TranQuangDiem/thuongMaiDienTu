package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import database.model.Account;
import database.model.Evaluate;
import database.model.Pricing;

public class UtilDataBase {
	public static Account getAccount(int id_account) {
		Account rs =null;
		try {
			String sql="select id, username, password, fullname, image from account";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rsSet=ps.executeQuery();
			while(rsSet.next()) {
				rs= new Account();
				rs.setId(rsSet.getInt(1));
				rs.setUsername(rsSet.getString(2));
				rs.setPassword(rsSet.getString(3));
				rs.setFullname(rsSet.getString(4));
				rs.setImage(rsSet.getString(5));
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
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return danhsachgoi;
	}

}
