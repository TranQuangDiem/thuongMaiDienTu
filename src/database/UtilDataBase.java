package database;


import java.sql.PreparedStatement;
import java.sql.ResultSet;


import java.util.ArrayList;
import java.util.List;

import model.Account;
import model.Address;
import model.Job;
import model.Pricing;
import model.Subscriber;

public class UtilDataBase {
	public static Account getAccount(int id_account) {
		Account rs = null;
		try {
			String sql = "select username, password, fullname, image, star_average,about,email,phone, role, name, major, twitter, facebook, website, background from account where id=?";
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
				rs.setStarAverage(rsSet.getFloat(5));
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
			String sql = "select username, password, fullname, image, star_average from account where id=?";
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
				rs.setStarAverage(rsSet.getFloat(5));

			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return rs;
	}

	public static List<Pricing> getPricing() {
		List<Pricing> danhsachgoi = new ArrayList<Pricing>();
		try {
			String sql = "select * from goibaidang ";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Pricing p = new Pricing(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7));
				danhsachgoi.add(p);
			}
			ConnectionDB.close(rs);

		} catch (Exception e) {
			// TODO: handle exception
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
				p = new Pricing(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getString(6), rs.getString(7));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return p;
	}

	public static List<Job> listJob() {
		List<Job> danhsachcongviec = new ArrayList<Job>();
		try {
			String sql = "select * from job limit 24";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				/** Load Job */
				
//				Job j = new Job(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(6),
//						rs.getInt(7), rs.getDate(8));
//				danhsachcongviec.add(j);
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
			String sql = "select id  from job where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_job);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				rs = new Job();
				rs.setId(rsSet.getInt(1));

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
	public static Address getAddress(int id_address) {
		Address address = null;
		try {
			String sql = "select id, `tinh/thanhpho`, `quan/huyen`, `xa/phuong`, diachi  from address where id_account=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id_address);
			ResultSet rsSet = ps.executeQuery();
			while (rsSet.next()) {
				address = new Address();
				address.setId(rsSet.getInt(1));
				address.setTinhThanhPho(rsSet.getString(2));
				address.setQuanHuyen(rsSet.getString(3));
				address.setXaPhuong(rsSet.getString(4));
				address.setDiaChi(rsSet.getString(5));
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
		System.out.println(getAccount(1));
	}

}
