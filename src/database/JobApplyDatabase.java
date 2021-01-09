package database;

import java.sql.PreparedStatement;

import dataform.FormApplyJob;

public class JobApplyDatabase {
	public static void insert(FormApplyJob form, int id) {
		
		try {

			String sql = "INSERT INTO applyjob (applyjob.idjob, applyjob.idaccount, appyljob.fullname, applujob.email) VALUES(?,?,?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.executeUpdate(sql);
			ps.setInt(1, id);
			ps.setInt(2, form.getIdJob());
			ps.setString(3, form.getFullname());
			ps.setString(4, form.getEmail());
					
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

	}
}
