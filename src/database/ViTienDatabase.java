package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.ViTien;

public class ViTienDatabase {
	public static ViTien findIdAccount(int idAccount) {
		ViTien v = null;
		try {
			String sql = "select * from vitien where idAccount="+idAccount;
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
//			ps.setInt(1, idAccount);
			ResultSet rs = ps.executeQuery(sql);
			while (rs.next()) {
				v = new ViTien(rs.getInt(1), rs.getInt(2), rs.getInt(3));
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
			String sql = "insert into vitien (idAccount,tongtien) value=("+idAccount+",0)";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
//			ps.setInt(1, idAccount);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
