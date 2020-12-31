package database;

import java.io.File;
import java.io.FileInputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;

import customutil.IntegerHelper;
import dataform.FormCreateJob;
import model.Job;

public class JobDAO {
	public static boolean insert(FormCreateJob form, int idAcc) {
		try {
			
			String query = "INSERT INTO job (job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			// set
			Date finday = new SimpleDateFormat("MM/dd/yyyy").parse(form.getFinishday());
			ps.setString(1, form.getJobname());
			ps.setString(2, form.getJobdescription());
			ps.setInt(3, idAcc);
			ps.setBlob(4,form.getImg().getInputStream() );
			ps.setInt(5, form.getQuantity());
			ps.setDate(6, new java.sql.Date(System.currentTimeMillis()));
			ps.setDate(7, new java.sql.Date(finday.getTime()));
			ps.setInt(8, 0);
			ps.setString(9, MajorDAO.getById(form.getMajor()).getName());
			ps.setString(10, form.getLanguage());
			ps.setString(11, form.getExp());
			ps.setString(12, form.getEducation());
			ps.setInt(13, Job.STATUS_OPEN);
			ps.setString(14, form.getLs_province());
			//
			int row = ps.executeUpdate();
			return row == 1;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public static int createId() {
		int id = IntegerHelper.getRandomNumberUsingNextInt(1, Integer.MAX_VALUE);
		while (isIdExists(id))
			id = IntegerHelper.getRandomNumberUsingNextInt(1, Integer.MAX_VALUE);
		return id;
	}

	public static boolean isIdExists(int id) {
		try {
			String query = "SELECT job.id FROM job WHERE job.id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			return rs.next();
		} catch (Exception e) {
			return false;
		}
	}

}
