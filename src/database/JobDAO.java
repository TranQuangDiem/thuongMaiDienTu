package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import customutil.DateHelper;
import customutil.FileHelper;
import customutil.IntegerHelper;
import customutil.StringHelper;
import dataform.FormCreateJob;
import model.Account;
import model.HoaDon;
import model.Job;

public class JobDAO {
	public static Job getJobById(int id) {
		try {
			String query = "SELECT job.id,job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype,account.fullname,job.active  FROM job JOIN account ON job.idAccount=account.id WHERE job.id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (!rs.next()) {
				return null;
			} else {
				Account acc = new Account();
				Job job = new Job();
				job.setId(rs.getInt(1));
				job.setJobTitle(rs.getString(2));
				job.setJobDescription(rs.getString(3));
				// 4
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
				acc.setFullname(rs.getString(17));
				job.setOfAccount(acc);
				job.setActive(rs.getInt(18));
				return job;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static List<Job> listJobsForIndex(){
		try {
			List<Job> listJobs=new ArrayList<>();
			String query="SELECT job.id,job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype,account.fullname,job.active  FROM job JOIN account ON job.idAccount=account.id WHERE  job.`status`=1 AND finishday >= (SELECT CURDATE()) AND job.active=1 ORDER BY job.ngaydang DESC LIMIT 0,20 ";
			PreparedStatement ps=ConnectionDB.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Account acc = new Account();
				Job job = new Job();
				job.setId(rs.getInt(1));
				job.setJobTitle(rs.getString(2));
				job.setJobDescription(rs.getString(3));
				// 4
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
				acc.setFullname(rs.getString(17));
				job.setOfAccount(acc);
				job.setActive(rs.getInt(18));
				listJobs.add(job);
			}
			return listJobs;
		}catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<Job>();
		}
	}

	public static boolean setHidePost(int id, boolean isHide) {
		try {
			String query = "UPDATE job SET job.active=? WHERE job.id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			if (isHide)
				ps.setInt(1, 2);
			else
				ps.setInt(1, 1);
			ps.setInt(2, id);
			ps.executeUpdate();
			ps.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public static boolean canPostJob(int idAcc) {
		HoaDon bill = HoaDonDatabase.findLatestEBill(idAcc);
		Date today = DateHelper.getDateWithoutTimeUsingCalendar();
		if (bill == null)
			return false;
		else if ((today.compareTo(bill.getNgayHetHan())) > 0)
			return false;
		else if ((bill.getSoluongbaidang() - getNumberJobWhen(bill.getNgayMua(), idAcc)) < 0) {
			return false;
		} else {
			return true;
		}
	}

	public static int getAllTotalRecords() {
		try {
			String query = "SELECT COUNT(*) FROM job ";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			rs.next();
			int result = rs.getInt(1);
			ps.close();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	public static int getNumberJobWhen(Date date, int idAcc) {
		try {
			String query = "SELECT COUNT(*) FROM job WHERE job.idAccount=? AND job.ngaydang>=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setInt(1, idAcc);
			ps.setDate(2, new java.sql.Date(date.getTime()));
			ResultSet rs = ps.executeQuery();
			rs.next();
			int result = rs.getInt(1);
			ps.close();
			return result;
		} catch (Exception e) {
			return -1;
		}
	}

	public static int numberJobIsOpen() {
		try {
			String query = "SELECT COUNT(*) FROM job WHERE job.`status`=1 AND finishday >= (SELECT CURDATE()) AND job.active=1";
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

	public static List<Job> getListJobsWithPage(int start, int itemInOnePage, String query, String jobtitle) {
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
				// 4
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
				acc.setFullname(rs.getString(17));
				job.setOfAccount(acc);
				job.setActive(rs.getInt(18));
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
		int rs = IntegerHelper.getRandomNumberUsingNextInt(0, Integer.MAX_VALUE);
		while (isIdExists(rs))
			rs = IntegerHelper.getRandomNumberUsingNextInt(0, Integer.MAX_VALUE);
		return rs;
	}

	public static List<Job> getAllJobIsOpen() {
		try {
			List<Job> listJobs = new ArrayList<Job>();
			String query = "SELECT job.id,job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype,account.fullname,account.`name`  FROM job JOIN account ON job.idAccount=account.id WHERE  job.`status`=1 AND finishday >= (SELECT CURDATE())";
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
				acc.setFullname(rs.getString(17));
				

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

			String query = "INSERT INTO job (job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype,job.id,job.active) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			// set
			Date finday = new SimpleDateFormat("MM/dd/yyyy").parse(form.getFinishday());
			int id = createId();
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
			ps.setInt(17, 1);
			//
			int row = ps.executeUpdate();
			if (row != 1) {
				return -1;
			} else {
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

	// save job
	public static void luuJob(int idAccount, int idjob) {
		try {
			String sql = "insert into savejob (idAccount,idjob) value (" + idAccount + "," + idjob + ")";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.executeUpdate(sql);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	// kiem tra job đã lưu chưa idjob
	public static boolean kiemtrajobSave(int idjob, int idAccount) throws ClassNotFoundException, SQLException {
		String sql = "select * from savejob where idjob=? and idAccount=?";
		PreparedStatement ps = ConnectionDB.prepareStatement(sql);
		ps.setInt(1, idjob);
		ps.setInt(2, idAccount);
		ResultSet rs = ps.executeQuery();
		return rs.next();
	}

	// xóa job đã lưu
	public static void deleteJobSave(int idJob, int idAccount) {
		try {
			String sql = "DELETE FROM savejob where idjob=? and idAccount=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, idJob);
			ps.setInt(2, idAccount);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	public static void tangView(int idjob,int view) {
		try {
			String sql = "update job set view=? where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, view);
			ps.setInt(2, idjob);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	public static int view(int idjob) {
		int luotxem=0;
		try {
			String sql = "select view from job where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, idjob);
			ResultSet rs = ps.executeQuery();
			rs.next();
			luotxem= rs.getInt(1);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return luotxem;
	}

	// tim jod da luu theo idAccount
	public static List<Job> findJobSave(int idAccount) {
		List<Job> list = new ArrayList<Job>();
		try {
			String sql = "SELECT job.id,job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype FROM job join savejob on job.id=savejob.idjob where savejob.idaccount=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, idAccount);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
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
				list.add(job);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;

	}

}
