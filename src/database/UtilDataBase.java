package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import database.model.Account;
import database.model.Evaluate;

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

}
