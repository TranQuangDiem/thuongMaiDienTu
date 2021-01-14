package database;


import java.sql.PreparedStatement;
import java.sql.ResultSet;


import java.util.ArrayList;
import java.util.List;

import customutil.FileHelper;
import model.Account;
import model.Address;
import model.Job;
import model.Pricing;
import model.Subscriber;

public class UtilDataBase {
	public static Account getAccount(int id_account) {
		Account rs = null;
		try {
			String sql = "select username, password, fullname, image, star,about,email,phone, role, name, major, twitter, facebook, website, background, ready,count_job,count_evaluate,count_job_finish,active from account where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_account);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				rs = new Account();
				rs.setId(id_account);
				rs.setUsername(rsSet.getString(1));
				rs.setPassword(rsSet.getString(2));
				rs.setFullname(rsSet.getString(3));
				rs.setImage(rsSet.getBlob(4));
				rs.setStar(rsSet.getInt(5));
				rs.setAbout(rsSet.getString(6));
				// rs.setAbout(getLargerString(rsSet, 6));
				rs.setEmail(rsSet.getString(7));
				rs.setPhone(rsSet.getString(8));
				rs.setRole(rsSet.getInt(9));
				rs.setName(rsSet.getString(10));
				rs.setMajor(rsSet.getString(11));
				rs.setTwitter(rsSet.getString(12));
				rs.setFacebook(rsSet.getString(13));
				rs.setWebsite(rsSet.getString(14));
				rs.setBackground(rsSet.getBlob(15));
				rs.setAddress(getAddress(id_account));
				rs.setReady(rsSet.getInt(16)==1);
				rs.setCountJob(rsSet.getInt(17));
				rs.setCountEvaluate(rsSet.getInt(18));
				rs.setCountJobFinish(rsSet.getInt(19));
				rs.setActive(rsSet.getInt(20)==1);
				// System.out.println(rs.toString());

			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

	public static Account getMinAccount(int id_account) {
		Account rs = null;
		try {
			String sql = "select username, password, fullname, image, star from account where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_account);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				rs = new Account();
				rs.setId(id_account);
				rs.setUsername(rsSet.getString(1));
				rs.setPassword(rsSet.getString(2));
				rs.setFullname(rsSet.getString(3));
				rs.setImage(rsSet.getBlob(4));
				rs.setStar(rsSet.getInt(5));

			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

	public static List<Pricing> getPricing(boolean kiemtra) {
		List<Pricing> danhsachgoi = new ArrayList<Pricing>();
		try {
			if (kiemtra==false) {
			String sql = "select * from goibaidang ";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Pricing p = new Pricing(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5),
						rs.getString(6));
				danhsachgoi.add(p);
			}
			ConnectionDB.close(rs);
			}else {
				String sql = "select * from goibaidang where gia>0";
				PreparedStatement ps = ConnectionDB.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					Pricing p = new Pricing(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5),
							rs.getString(6));
					danhsachgoi.add(p);
				}
				ConnectionDB.close(rs);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return danhsachgoi;
	}
	public static List<Pricing> getPricingLimit(int limit,boolean kiemtra) {
		List<Pricing> danhsachgoi = new ArrayList<Pricing>();
		try {
			if(kiemtra==false) {
			String sql = "select * from goibaidang limit "+limit;
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Pricing p = new Pricing(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5),
						rs.getString(6));
				danhsachgoi.add(p);
			}
			ConnectionDB.close(rs);
			}else {
				String sql = "select * from goibaidang where gia>0 ";
				PreparedStatement ps = ConnectionDB.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					Pricing p = new Pricing(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5),
							rs.getString(6));
					danhsachgoi.add(p);
				}
				ConnectionDB.close(rs);
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return danhsachgoi;
	}
	public static Pricing findPricingById(int id) {
		Pricing p = null;
		try {
			String sql = "select * from goibaidang where id =?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				p = new Pricing(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5),
						rs.getString(6));
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return p;
	}

	public static List<Job> listJob() {
		List<Job> danhsachcongviec = new ArrayList<Job>();
		try {
			String sql = "SELECT job.id,job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype, job.idAccount  FROM job limit 24";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				/** Load Job */
				Job j = new Job();
				j.setId(rs.getInt(1));
				j.setJobTitle(rs.getString(2));
				j.setJobDescription(rs.getString(3));
				//4
				j.setImg(FileHelper.convertImgToString(rs.getBlob(5)));
				j.setSoluongtuyen(rs.getInt(6));
				j.setCreateday(rs.getDate(7));
				j.setFinishday(rs.getDate(8));
				j.setView(rs.getInt(9));
				j.setMajor(rs.getString(10));
				j.setLanguage(rs.getString(11));
				j.setExp(rs.getString(12));
				j.setEducation(rs.getString(13));
				j.setStatus(rs.getInt(14));
				j.setCity(rs.getString(15));
				j.setJobType(rs.getInt(16));
				j.setOfAccount(getAccount(rs.getInt(17)));
//				Job j = new Job(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(6),
//						rs.getInt(7), rs.getDate(8));
				danhsachcongviec.add(j);
			}
			ConnectionDB.close(rs);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return danhsachcongviec;
	}
	public static Job listJobLimit(int limit) {
		Job j = new Job();
		try {
			String sql = "SELECT job.id,job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype, job.idAccount  FROM job limit ?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, limit);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				/** Load Job */
				
				j.setId(rs.getInt(1));
				j.setJobTitle(rs.getString(2));
				j.setJobDescription(rs.getString(3));
				//4
				j.setImg(FileHelper.convertImgToString(rs.getBlob(5)));
				j.setSoluongtuyen(rs.getInt(6));
				j.setCreateday(rs.getDate(7));
				j.setFinishday(rs.getDate(8));
				j.setView(rs.getInt(9));
				j.setMajor(rs.getString(10));
				j.setLanguage(rs.getString(11));
				j.setExp(rs.getString(12));
				j.setEducation(rs.getString(13));
				j.setStatus(rs.getInt(14));
				j.setCity(rs.getString(15));
				j.setJobType(rs.getInt(16));
				j.setOfAccount(getAccount(rs.getInt(17)));
//				Job j = new Job(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(6),
//						rs.getInt(7), rs.getDate(8));

			}
			ConnectionDB.close(rs);
		} catch (Exception e) {
			
		}
		return j;
	}
	public static List<Job> listJobType(int jobtype) {
		List<Job> danhsachcongviec = new ArrayList<Job>();
		try {
			String sql = "SELECT job.id,job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype, job.idAccount  FROM job where jobtype=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, jobtype);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				/** Load Job */
				Job j = new Job();
				j.setId(rs.getInt(1));
				j.setJobTitle(rs.getString(2));
				j.setJobDescription(rs.getString(3));
				//4
				j.setImg(FileHelper.convertImgToString(rs.getBlob(5)));
				j.setSoluongtuyen(rs.getInt(6));
				j.setCreateday(rs.getDate(7));
				j.setFinishday(rs.getDate(8));
				j.setView(rs.getInt(9));
				j.setMajor(rs.getString(10));
				j.setLanguage(rs.getString(11));
				j.setExp(rs.getString(12));
				j.setEducation(rs.getString(13));
				j.setStatus(rs.getInt(14));
				j.setCity(rs.getString(15));
				j.setJobType(rs.getInt(16));
				j.setOfAccount(getAccount(rs.getInt(17)));
//				Job j = new Job(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(6),
//						rs.getInt(7), rs.getDate(8));
				danhsachcongviec.add(j);
			}
			ConnectionDB.close(rs);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return danhsachcongviec;
	}

	public static Job getJob(int id_job) {
		Job rs = null;
		try {
			String sql = "SELECT job.id,job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype, job.idAccount  FROM job "
					+ " where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_job);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				rs = new Job();
				Job job = new Job();
				rs.setId(rsSet.getInt(1));
				rs.setJobTitle(rsSet.getString(2));
				rs.setJobDescription(rsSet.getString(3));
				//4
				rs.setImg(FileHelper.convertImgToString(rsSet.getBlob(5)));
				rs.setSoluongtuyen(rsSet.getInt(6));
				rs.setCreateday(rsSet.getDate(7));
				rs.setFinishday(rsSet.getDate(8));
				rs.setView(rsSet.getInt(9));
				rs.setMajor(rsSet.getString(10));
				rs.setLanguage(rsSet.getString(11));
				rs.setExp(rsSet.getString(12));
				rs.setEducation(rsSet.getString(13));
				rs.setStatus(rsSet.getInt(14));
				rs.setCity(rsSet.getString(15));
				rs.setJobType(rsSet.getInt(16));
				rs.setOfAccount(getAccount(rsSet.getInt(17)));

			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

	public static Subscriber getSubscriber(int id_subscriber) {
		Subscriber subscriber = null;
		try {
			String sql = "select id, id_account, date_apply, status, id_job  from subscriber where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_subscriber);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				subscriber = new Subscriber();
				subscriber.setId(rsSet.getInt(1));
				subscriber.setAccount(getAccount(rsSet.getInt(2)));
				subscriber.setDateApply(rsSet.getTimestamp(3));
				subscriber.setStatus(rsSet.getInt(4));
				subscriber.setJob(getJob(rsSet.getInt(5)));

			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return subscriber;
	}
	public static Address getAddress(int id_account) {
		Address address = new Address();
		try {
			String sql = "select id, `province`, `district`, `ward`, detail_address  from address where id_account=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_account);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				
				address.setId(rsSet.getInt(1));
				address.setProvince(rsSet.getString(2));
				address.setDistrict(rsSet.getString(3));
				address.setWard(rsSet.getString(4));
				address.setDetailAddress(rsSet.getString(5));
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return address;
	}

	// public static String getLargerString(ResultSet rs, int columnIndex) throws
	// SQLException {
	//
	// InputStream in = null;
	// int BUFFER_SIZE = 1024;
	// try {
	// in = rs.getAsciiStream(columnIndex);
	// if (in == null) {
	// return "";
	// }
	//
	// byte[] arr = new byte[BUFFER_SIZE];
	// StringBuffer buffer = new StringBuffer();
	// int numRead = in.read(arr);
	// while (numRead != -1) {
	// buffer.append(new String(arr, 0, numRead));
	// numRead = in.read(arr);
	// }
	// return buffer.toString();
	// } catch (Exception e) {
	// e.printStackTrace();
	// throw new SQLException(e.getMessage());
	// }
	// }
	public static void main(String[] args) {
		System.out.println("Run");
		System.out.println(getAccount(1));
	}

}
