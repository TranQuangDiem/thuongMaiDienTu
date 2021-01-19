package database;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class StatisticalDatabase {
	public static int Doanhthu() {

		try {
			String sql = " SELECT SUM(giaTri) FROM `hoadon`";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
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

	public static int totalacc() {

		try {
			String sql = " SELECT COUNT(*) FROM `account`";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
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

	public static int statistoday() {

		try {
			String sql = " SELECT SUM(giaTri) FROM `hoadon` WHERE ngayMua = (Select CURDATE())";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
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

	public static int statisMonth() {
		try {
			String sql = " SELECT SUM( giaTri) FROM `hoadon` WHERE MONTH(ngayMua) =  MONTH(CURDATE())";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
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

	public static int statis1Month() {
		try {
			String sql = "SELECT SUM( giaTri) FROM `hoadon` WHERE MONTH(ngayMua) = MONTH(DATE_ADD(CURRENT_DATE,INTERVAL -1 MONTH ))";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
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

	public static int statis2Month() {
		try {
			String sql = "SELECT SUM( giaTri) FROM `hoadon` WHERE MONTH(ngayMua) = MONTH(DATE_ADD(CURRENT_DATE,INTERVAL -2 MONTH ))";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
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

	public static int statis3Month() {
		try {
			String sql = "SELECT SUM( giaTri) FROM `hoadon` WHERE MONTH(ngayMua) = MONTH(DATE_ADD(CURRENT_DATE,INTERVAL -3 MONTH ))";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
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

	public static int statis4Month() {
		try {
			String sql = "SELECT SUM( giaTri) FROM `hoadon` WHERE MONTH(ngayMua) = MONTH(DATE_ADD(CURRENT_DATE,INTERVAL -4 MONTH ))";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
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

	public static Float proit() {
		int m = statisMonth();
		int m1 = statis1Month();
		float t = m - m1;
		float f = t / m1;
		float r = f * 100;
		return r;

	}

}
