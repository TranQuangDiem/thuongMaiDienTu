package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Pricing;

public class PricingDAO {
	public static List<Pricing> finAll(){
		List<Pricing> danhsachgoi=new ArrayList<Pricing>();
		try {
			String sql = "select * from goibaidang";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Pricing p = new Pricing(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5),
						rs.getString(6));
				danhsachgoi.add(p);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return danhsachgoi;
	}
	public static void save(Pricing pricing) {
		try {
			String sql = "insert into goibaidang (tengoi,gia,soluongbaidang,thoihan,mota) values(?,?,?,?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setString(1, pricing.getTengoi());
			ps.setInt(2, pricing.getGia());
			ps.setInt(3, pricing.getSoluongbaidang());
			ps.setInt(4, pricing.getThoihan());
			ps.setString(5, pricing.getMota());
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	public static void update(Pricing pricing) {
		try {
			String sql = "update goibaidang set tengoi=?,gia=?,soluongbaidang=?,thoihan=?,mota=? where id=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setString(1, pricing.getTengoi());
			ps.setInt(2, pricing.getGia());
			ps.setInt(3, pricing.getSoluongbaidang());
			ps.setInt(4, pricing.getThoihan());
			ps.setString(5, pricing.getMota());
			ps.setInt(6, pricing.getId());
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	public static void delete(int id) {
		try {
			String sql= "delete from goibaidang where id=?";
			PreparedStatement ps  =ConnectionDB.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
