package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import model.Account;
import model.Evaluate;

public class EmployerProfileDatabase {

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
