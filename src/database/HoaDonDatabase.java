package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.HoaDon;

public class HoaDonDatabase {

	public static void save(HoaDon hoadon, int thoihan) {
		try {
			String sql = "insert into hoadon(idAccount,tenGoi,soLuongBaiDang,ngayMua,ngayHetHan,giaTri,active) value(";
			sql+=hoadon.getIdAccount()+",";
			sql+="'"+hoadon.getTengoi()+"',";
			sql+=hoadon.getSoluongbaidang()+",";
			sql+="'"+hoadon.getNgayMua()+"',";
			sql+="ADDDATE("+"'"+hoadon.getNgayMua()+"',"+thoihan+"),"+hoadon.getGiaTri()+",1)";
			PreparedStatement rs = ConnectionDB.prepareStatement(sql);
			rs.executeUpdate(sql);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
	}


	public static void update(int idAccount ) {
		try {
			String sql = "update hoadon set active=0 where active=1 and idAccount="+idAccount;
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.executeUpdate(sql);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	public static boolean kiemtraGoiDungThu(int idAccount) {
		boolean kiemtra = false;
		try {
			String sql="select * from hoadon where giaTri=0 and idAccount="+idAccount;
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rs = ps.executeQuery(sql);
			while(rs.next()) {
			int a=rs.getInt(1);
			if(a>0) {
				kiemtra=true;
			}else {
				kiemtra=false;
			}
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return kiemtra;
		
	}
	public static HoaDon findLatestEBill(int idAcc) {
		try {
			String query="SELECT h.id,h.idAccount,h.tenGoi,h.soLuongBaiDang,h.ngayMua,h.ngayHetHan,h.giaTri,h.active FROM hoadon AS h WHERE h.idAccount=? AND h.active=1 AND h.ngayHetHan IN (SELECT MAX(h2.ngayHetHan) FROM hoadon h2 WHERE h2.idAccount=?) ";
			PreparedStatement ps=ConnectionDB.prepareStatement(query);
			ps.setInt(1,idAcc);
			ps.setInt(2,idAcc);
			ResultSet rs=ps.executeQuery();
			boolean row= rs.next();
			if(row==false)return null;
			HoaDon bill=new HoaDon();
			bill.setId(rs.getInt(1));
			bill.setIdAccount(rs.getInt(2));
			bill.setTengoi(rs.getString(3));
			bill.setSoluongbaidang(rs.getInt(4));
			bill.setNgayMua(rs.getDate(5));
			bill.setNgayHetHan(rs.getDate(6));
			bill.setGiaTri(rs.getDouble(7));
			bill.setActive(rs.getInt(1));
			return bill;
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
	public static List<HoaDon> finAll(){
		List<HoaDon> hoadon = new ArrayList<HoaDon>();
		try {
			String sql="select * from hoadon";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ResultSet rs = ps.executeQuery(sql);
			while(rs.next()) {
				HoaDon h = new HoaDon(rs.getInt(1), rs.getInt(2), rs.getString(3),rs.getInt(4), rs.getDate(5), rs.getDate(6), rs.getDouble(7), rs.getInt(8));
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
			String sql="select * from hoadon where idAccount="+idAccount +" order by id DESC";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
//			ps.setInt(1, idAccount);
			ResultSet rs = ps.executeQuery(sql);
			while(rs.next()) {
				HoaDon h = new HoaDon(rs.getInt(1), rs.getInt(2), rs.getString(3),rs.getInt(4), rs.getDate(5), rs.getDate(6), rs.getDouble(7),rs.getInt(8));
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
	public static void main(String[] args) {
		System.out.println(findLatestEBill(15));
	}
}
