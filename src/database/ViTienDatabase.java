package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.ViTien;

public class ViTienDatabase {
	public static ViTien findIdAccount(int idAccount) {
		ViTien v = null;
		try {
			String sql = "select * from vitien where idAccount=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, idAccount);
			ResultSet rs = ps.executeQuery(sql);
			while (rs.next()) {
				v = new ViTien(rs.getInt(1), rs.getInt(2), rs.getDouble(3));
			}

		} catch (Exception e) {
			e.getMessage();
		}
		return v;
	}

	public static void Update(int idAccount, double tongtien) {
		try {
			String sql = "update vitien set tongtien=? where idAccount=?";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setDouble(1, tongtien);
			ps.setInt(2, idAccount);
			ps.executeUpdate(sql);

		} catch (Exception e) {
			e.getMessage();
		}
	}

	public static void save(int idAccount) {
		try {
			String sql = "insert into vitien (idAccount,tongtien) value=(?,0)";
			PreparedStatement ps = ConnectionDB.prepareStatement(sql);
			ps.setInt(1, idAccount);
		} catch (Exception e) {
			e.getMessage();
		}
	}

}
