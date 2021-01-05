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
import customutil.StringHelper;
import dataform.FormCreateJob;
import model.Account;
import model.Job;

public class JobDAO {

	public static int numberJobIsOpen() {
		try {
			String query = "SELECT COUNT(*) FROM job WHERE job.`status`=1 AND finishday >= (SELECT CURDATE())";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			rs.next();
			return rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	public static int getTotalRecords(String queryWHERE, String jobtitle) {
		try {

			String query = "SELECT COUNT(*) FROM job " + queryWHERE;
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			if (!StringHelper.isStringNull(jobtitle)) {
				ps.setString(1, "%" + jobtitle + "%");
			}
			ResultSet rs = ps.executeQuery();
			rs.next();
			int records = rs.getInt(1);
			ps.close();
			return records;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}

	}

	public static List<Job> getAllJobIsOpenWithPage(int start, int itemInOnePage, String query, String jobtitle) {
		try {

			List<Job> listJobs = new ArrayList<Job>();
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			if (!StringHelper.isStringNull(jobtitle)) {
				ps.setString(1, "%" + jobtitle + "%");
				if (start == 1)
					ps.setInt(2, 0);
				else
					ps.setInt(2, ((start - 1) * itemInOnePage + 1) - 1);
				ps.setInt(3, itemInOnePage);

			} else {
				if (start == 1)
					ps.setInt(1, 0);
				else
					ps.setInt(1, ((start - 1) * itemInOnePage + 1) - 1);
				ps.setInt(2, itemInOnePage);

			}

			ResultSet rs = ps.executeQuery();
			if (!StringHelper.isStringNull(jobtitle)) {
				ps.setString(1, "%" + jobtitle + "%");
			}
			while (rs.next()) {
				Account acc = new Account();
				Job job = new Job();
				job.setId(rs.getInt(1));
				job.setJobTitle(rs.getString(2));
				job.setJobDescription(rs.getString(3));
				//4
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
				job.setJobType(rs.getInt(16));
				// Account
				acc.setId(rs.getInt(4));
				acc.setUsername(rs.getString(17));
				acc.setPassword(rs.getString(18));
				acc.setFullname(rs.getString(19));
				acc.setImage(rs.getBlob(20) == null ? null : rs.getBlob(20));
				acc.setStarAverage(rs.getFloat(21));
				acc.setAbout(rs.getString(22));
				acc.setEmail(rs.getString(23));
				acc.setPhone(rs.getString(24));
				acc.setRole(rs.getInt(25));
				acc.setName(rs.getString(26));
				acc.setMajor(rs.getString(27));
				acc.setTwitter(rs.getString(28));
				acc.setFacebook(rs.getString(29));
				acc.setWebsite(rs.getString(30));
				acc.setBackground(rs.getBlob(31) == null ? null : rs.getBlob(31));
				acc.setAddress(UtilDataBase.getAddress(rs.getInt(4)));
				acc.setLinkedin(rs.getString(32));
				acc.setReady(rs.getInt(33) == 1);
				job.setOfAccount(acc);
				listJobs.add(job);
			}
			ps.close();
			return listJobs;

		} catch (

		Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public static int createId() {
		int rs=IntegerHelper.getRandomNumberUsingNextInt(0, Integer.MAX_VALUE);
		while(isIdExists(rs)) rs=IntegerHelper.getRandomNumberUsingNextInt(0, Integer.MAX_VALUE);
		return rs;
	}
	public static List<Job> getAllJobIsOpen() {
		try {
			List<Job> listJobs = new ArrayList<Job>();
			String query = "SELECT job.id,job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype, username, account.`password`, fullname, image, star_average,about,email,phone, role, account.`name`, account.major, twitter, facebook, website, background,linkedin,ready FROM job JOIN account ON job.idAccount=account.id WHERE  job.`status`=1 AND finishday >= (SELECT CURDATE())";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Account acc = new Account();
				Job job = new Job();
				job.setId(rs.getInt(1));
				job.setJobTitle(rs.getString(2));
				job.setJobDescription(rs.getString(3));
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
				job.setJobType(rs.getInt(16));
				// Account
				acc.setId(rs.getInt(4));
				acc.setUsername(rs.getString(17));
				acc.setPassword(rs.getString(18));
				acc.setFullname(rs.getString(19));
				acc.setImage(rs.getBlob(20) == null ? null : rs.getBlob(20));
				acc.setStarAverage(rs.getFloat(21));
				acc.setAbout(rs.getString(22));
				acc.setEmail(rs.getString(23));
				acc.setPhone(rs.getString(24));
				acc.setRole(rs.getInt(25));
				acc.setName(rs.getString(26));
				acc.setMajor(rs.getString(27));
				acc.setTwitter(rs.getString(28));
				acc.setFacebook(rs.getString(29));
				acc.setWebsite(rs.getString(30));
				acc.setBackground(rs.getBlob(31) == null ? null : rs.getBlob(31));
				acc.setAddress(UtilDataBase.getAddress(rs.getInt(4)));
				acc.setLinkedin(rs.getString(32));
				acc.setReady(rs.getInt(33) == 1);
				job.setOfAccount(acc);
				listJobs.add(job);
			}
			return listJobs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static int insert(FormCreateJob form, int idAcc) {
		try {

			String query = "INSERT INTO job (job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype,job.id) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			// set
			Date finday = new SimpleDateFormat("MM/dd/yyyy").parse(form.getFinishday());
			int id=createId();
			ps.setString(1, form.getJobname());
			ps.setString(2, form.getJobdescription());
			ps.setInt(3, idAcc);
			ps.setBlob(4, form.getImg().getInputStream());
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
			ps.setInt(15, form.getJobtype());
			ps.setInt(16, id);
			//
			int row = ps.executeUpdate();
			if(row!=1) {
				return -1;
			}else {
				return id;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
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
