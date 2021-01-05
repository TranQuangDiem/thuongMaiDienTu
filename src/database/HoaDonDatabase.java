package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.HoaDon;

public class HoaDonDatabase {

	public static void save(HoaDon hoadon, int thoihan) {
		try {
			String sql = "insert into hoadon(idAccount,tenGoi,soLuongBaiDang,ngayMua,ngayHetHan,giaTri) value(";
			sql+=hoadon.getIdAccount()+",";
			sql+="'"+hoadon.getTengoi()+"',";
			sql+=hoadon.getSoluongbaidang()+",";
			sql+="'"+hoadon.getNgayMua()+"',";
			sql+="ADDDATE("+"'"+hoadon.getNgayMua()+"',"+thoihan+"),"+hoadon.getGiaTri()+")";
			PreparedStatement rs = ConnectionDB.prepareStatement(sql);
//			rs.setInt(1, hoadon.getIdAccount());
//			rs.setString(2, hoadon.getTengoi());
//			rs.setInt(3, hoadon.getSoluongbaidang());
//			rs.setDate(4, hoadon.getNgayMua());
//			rs.setDate(5, hoadon.getNgayHetHan());
//			rs.setDouble(6, hoadon.getGiaTri());
			rs.executeUpdate(sql);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	
	public static List<HoaDon> finAll(){
		List<HoaDon> hoadon = new ArrayList<HoaDon>();
		try {
			String sql="select * from hoadon";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rs = ps.executeQuery(sql);
			while(rs.next()) {
				HoaDon h = new HoaDon(rs.getInt(1), rs.getInt(2), rs.getString(3),rs.getInt(4), rs.getDate(5), rs.getDate(6), rs.getDouble(7));
				hoadon.add(h);
			}
			ConnectionDB.close(rs);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return hoadon; 
	}
	public static List<HoaDon> findByIdAccount(int idAccount) {
		List<HoaDon> hoadon = new ArrayList<HoaDon>();
		try {
			String sql="select * from hoadon where idAccount="+idAccount;
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
//			ps.setInt(1, idAccount);
			ResultSet rs = ps.executeQuery(sql);
			while(rs.next()) {
				HoaDon h = new HoaDon(rs.getInt(1), rs.getInt(2), rs.getString(3),rs.getInt(4), rs.getDate(5), rs.getDate(6), rs.getDouble(7));
				hoadon.add(h);
			}
			ConnectionDB.close(rs);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return hoadon; 
	}
	public void delete(int id) {
		try {
		String sql = "DELETE FROM hoadon where id="+id;
		PreparedStatement ps= ConnectionDB.prepareStatement(sql);
//		ps.setInt(1, id);
		ps.executeQuery(sql);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
