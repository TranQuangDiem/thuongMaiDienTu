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
			ps.close();
			return listMajors;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}
	public static boolean isExists(String major) {
		try {
			major=major.trim();
			String query="SELECT major.id FROM major WHERE major.`name`=?";
			PreparedStatement ps= ConnectionDB.prepareStatement(query);
			ps.setString(1, major);
			ResultSet rs= ps.executeQuery();
			boolean result=rs.next();
			ps.close();
			return result;
		}catch (Exception e) {
			e.printStackTrace();
			return true;
		}
	}
	public static boolean addMajor(String major) {
		try {
			major=major.trim();
			String query="INSERT INTO major (major.`name`) VALUES (?)";
			PreparedStatement ps= ConnectionDB.prepareStatement(query);
			ps.setString(1, major);
			int row=ps.executeUpdate();
			ps.close();
			return row==1;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public static boolean deleteMajor(int id) {
		try {
			String query="DELETE FROM major WHERE major.id=?";
			PreparedStatement ps= ConnectionDB.prepareStatement(query);
			ps.setInt(1, id);
			int row=ps.executeUpdate();
			ps.close();
			return row==1;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
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
	public static Major getByName(String major) {
		try {
			String query = "SELECT  major.id,major.`name` FROM major WHERE major.`name`=?";
			PreparedStatement ps= ConnectionDB.prepareStatement(query);
			ps.setString(1, major.trim());
			ResultSet rs= ps.executeQuery();
			rs.next();
			return new Major(rs.getInt(1),rs.getString(2));
		}catch (Exception e){
			return null;
		}
	}

}
