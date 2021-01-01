package database;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.List;

import customutil.FileHelper;
import customutil.IntegerHelper;
import dataform.FormCreateJob;
import model.Job;

public class JobDAO {
	
	public static int numberJobIsOpen() {
		try {
			String query="SELECT COUNT(*) FROM job WHERE job.`status`=1 AND finishday >= (SELECT CURDATE())";
			PreparedStatement ps=ConnectionDB.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			rs.next();
			return rs.getInt(1);
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}
	}
	public static List<Job> getAllJob() {
		try {
			List<Job> listJobs=new ArrayList<Job>();
			String query="SELECT job.id,job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city	FROM job WHERE job.`status`=1 AND finishday >= (SELECT CURDATE())";
			PreparedStatement ps=ConnectionDB.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Job job= new Job();
				job.setId(rs.getInt(1));
				job.setJobTitle(rs.getString(2));
				job.setJobDescription(rs.getString(3));
				job.setIdAcc(rs.getInt(4));
				job.setImg(FileHelper.convertImgToString(rs.getBlob(5)));
				job.setSoluongtuyen(rs.getInt(6));
				job.setCreateday(rs.getDate(7));
				job.setFinishday(rs.getDate(8));
				job.setView(rs.getInt(9));
				job.setMajor(rs.getString(10));
				job.setLanguage(rs.getString(11));
				job.setExp(rs.getString(12));
				job.setEducation(rs.getString(13));
				job.setStatus(rs.getInt(14));
				job.setCity(rs.getString(15));
				listJobs.add(job);
			}
			return listJobs;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
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
