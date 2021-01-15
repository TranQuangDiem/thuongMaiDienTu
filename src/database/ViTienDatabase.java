package database;


import java.sql.PreparedStatement;
import java.sql.ResultSet;



import model.ViTien;

public class ViTienDatabase {
	public static ViTien findIdAccount(int idAccount) {
		ViTien v = new ViTien();
		try {
			String sql = "select id, idAccount, tongtien from vitien where idAccount=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			//System.out.println(idAccount);
			ps.setInt(1, idAccount);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				
				v.setId(rs.getInt(1));
				v.setIdAccount(rs.getInt(2));
				v.setTongTien(rs.getInt(3));
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return v;
	}

	public static void Update(int idAccount, int tongtien) {
		try {
			String sql = "update vitien set tongtien="+tongtien+ " where idAccount="+idAccount;
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
//			ps.setInt(1, tongtien);
//			ps.setInt(2, idAccount);
			ps.executeUpdate(sql);

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public static void save(int idAccount) {
		try {
			String sql = "insert into vitien (idAccount,tongtien) value("+idAccount+",0)";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.executeUpdate(sql);
//			ps.setInt(1, idAccount);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	public static void main(String[] args) {
		
		System.out.println(findIdAccount(1));
	}

}
