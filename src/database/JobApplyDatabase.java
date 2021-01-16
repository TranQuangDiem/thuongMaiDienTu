package database;

import java.sql.Date;
import java.sql.PreparedStatement;

import dataform.FormApplyJob;

public class JobApplyDatabase {
	public static void insert(FormApplyJob form, int id, Date date ) {
		
		try {

			String query = "INSERT INTO subscriber (subscriber.id_account, subscriber.id_job, subscriber.status, subscriber.date_apply) VALUES(?,?,?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			
			ps.setInt(1, id);
			ps.setInt(2, form.getIdJob());
			ps.setInt(3, 1);
			ps.setDate(4, date);
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}
public static void insertInDetail(int id_job, int id, Date date ) {
		
		try {

			String query = "INSERT INTO subscriber (subscriber.id_account, subscriber.id_job, subscriber.status, subscriber.date_apply) VALUES(?,?,?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			
			ps.setInt(1, id);
			ps.setInt(2, id_job);
			ps.setInt(3, 1);
			ps.setDate(4, date);
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}
}
