package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import customutil.FileHelper;
import model.Account;
import model.Job;
import model.Subscriber;

public class JobApplyDetailDatabase {
	public static List<Subscriber> getNewSubscribers(int id_job, int last_id_subscriber) {
		List<Subscriber> rs = new ArrayList<Subscriber>();
		try {
			String sql = "select id, id_account, time, star, content from evaluate where id_freelancer=? ";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_job);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				// int id_account= rsSet.getInt(2);
//				Account account = UtilDataBase.getAccount(id_account);
//				Evaluate e = new Evaluate(rsSet.getInt(1),account, rsSet.getTimestamp(3), 
//						rsSet.getInt(4), rsSet.getString(5));
//				rs.add(e);
//				 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
//				System.out.println(formatter.format(e.getTime()));

			}
			ConnectionDB.close(rsSet);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

	public static List<Subscriber> getSubscribers(int id_job, int numberPage) {
		List<Subscriber> rs = new ArrayList<Subscriber>();
		try {
			String sql = "select id, id_account, date_apply, status  from subscriber where id_job=? order by date_apply desc limit ?,?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_job);
			ps.setInt(2, numberPage * 5);
			ps.setInt(3, (numberPage + 1) * 5);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {

				Subscriber subscriber = new Subscriber();
				subscriber.setId(rsSet.getInt(1));
				subscriber.setAccount(UtilDataBase.getAccount(rsSet.getInt(2)));
				subscriber.setDateApply(rsSet.getTimestamp(3));
				subscriber.setStatus(rsSet.getInt(4));
				subscriber.setJob(UtilDataBase.getJob(id_job));

				rs.add(subscriber);

			}
			ConnectionDB.close(rsSet);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

	public static boolean changeStatusFreeLancer(int freelancer_id, int id_job, Subscriber.Status status) {
		try {
			String sql = "update subscriber set status = ? where id_job=? and id_account=? ";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, status.getValue());
			ps.setInt(2, id_job);
			ps.setInt(3, freelancer_id);

			int row = ps.executeUpdate();

			ps.getConnection().close();
			if (row == 1)
				return true;

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	public static List<Job> listDetail(int id_job) {

		try {
			List<Job> jobdetail = new ArrayList<>();
			String query = "SELECT *  FROM job  WHERE id= ? ";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setInt(1, id_job);
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
				acc.setId(rs.getInt(4));
				acc.setFullname(rs.getString(17));
				acc.setName(rs.getString(18));


				jobdetail.add(job);
			}
			return jobdetail;
		} catch (Exception e) {
			e.printStackTrace();
			return new ArrayList<Job>();
		}
	}
}
