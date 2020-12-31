package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Major;

public class MajorDAO {
	public static List<Major> getAll() {
		try {
			List<Major> listMajors = new ArrayList<Major>();
			String query = "SELECT  major.id,major.`name` FROM major";
			PreparedStatement ps= ConnectionDB.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				listMajors.add(new Major(rs.getInt(1), rs.getString(2)));
			}
			return listMajors;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}

	}
	public static Major getById(int id) {
		try {
			String query = "SELECT  major.id,major.`name` FROM major WHERE major.id=?";
			PreparedStatement ps= ConnectionDB.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs= ps.executeQuery();
			rs.next();
			return new Major(rs.getInt(1),rs.getString(2));
		}catch (Exception e){
			return null;
		}
	}

}
