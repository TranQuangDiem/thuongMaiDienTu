package database;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

import dataform.FormApplyJob;
import dataform.FormCreateJob;
import dataform.FormReport;
import model.Job;

public class ReportDatabase {
//	public static void insert(int id_report, int id, Date date) {
//
//		try {
//
//			String query = "INSERT INTO report (report.id_report, report.id_reported,report.date_report) VALUES(?,?,?)";
//			PreparedStatement ps = ConnectionDB.prepareStatement(query);
//			ps.setInt(1, id_report);
//			ps.setInt(2,id);
//			ps.setDate(3, date);
//			ps.executeUpdate();
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//		}
//	}
	public static void insert(FormReport form, int id , int id_report, Date date) {
		try {

			String query = "INSERT INTO report (report.id_report, report.id_reported,report.title, report.content, report.img1, report.img2, report.img3,report.date_report) VALUES(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = ConnectionDB.prepareStatement(query);
			ps.setInt(1, id_report);
			ps.setInt(2, id);
			ps.setString(3, form.getTitle());
			ps.setString(4, form.getContent());
			ps.setBlob(5, form.getImg1().getInputStream());
			ps.setBlob(6, form.getImg2().getInputStream());
			ps.setBlob(7, form.getImg3().getInputStream());
			ps.setDate(8, date);
			ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	

}
