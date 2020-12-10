package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
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
	public static int insertEvaluate(int id_freelancer, Evaluate evaluate) {
		int rs=0;
		try {
			String sql="insert  into evaluate(id_account,id_freelancer,time,star,content)"+
						" values(?,?,?,?,?);";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, evaluate.getAccount().getId());
			ps.setInt(2, id_freelancer);
			ps.setTimestamp(3, new Timestamp(evaluate.getTime().getTime()));
			ps.setInt(4, evaluate.getStar());
			ps.setString(5, evaluate.getContent());
			rs=ps.executeUpdate();
			
			
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

}
