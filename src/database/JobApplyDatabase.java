package database;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dataform.FormApplyJob;

public class JobApplyDatabase {
	
	public static int kiemtra(int id_job, int id_account) {
		
		try {
			String query = " SELECT id FROM `subscriber` WHERE id_account=? AND id_job=?";
				PreparedStatement ps = ConnectionDB.prepareStatement(query);
				ResultSet rs = ps.executeQuery();
				rs.next();
				int result = rs.getInt(1);
				ps.close();
				return result;
					
		}
		catch (Exception e) {
			e.printStackTrace();
			return -1;			
		}
	}
	
	
	
	public static void insert(FormApplyJob form, int id, Date date) {

		try {
			if(kiemtra(form.getIdJob(), id)==0) {

			String query = "INSERT INTO subscriber (subscriber.id_account, subscriber.id_job, subscriber.status, subscriber.date_apply) VALUES(?,?,?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);

			ps.setInt(1, id);
			ps.setInt(2, form.getIdJob());
			ps.setInt(3, 1);
			ps.setDate(4, date);
			ps.executeUpdate();
			}else {
				System.out.println("đã ứng tuyển");
			}
		
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public static void insertInDetail(int id_job, int id, Date date) {

		try {
			if(kiemtra(id_job, id)==0) {
			String query = "INSERT INTO subscriber (subscriber.id_account, subscriber.id_job, subscriber.status, subscriber.date_apply) VALUES(?,?,?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);

			ps.setInt(1, id);
			ps.setInt(2, id_job);
			ps.setInt(3, 1);
			ps.setDate(4, date);
			ps.executeUpdate();
			}else {
				System.out.println("đã ứng tuyển");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
