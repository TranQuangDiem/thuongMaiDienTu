package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class ConnectionDB {
    public static Connection con;
//    private final static String url="jdbc:mysql://localhost:3306/ecommerce?useUnicode=true&characterEncoding=utf-8";
    private final static String url="jdbc:mysql://localhost:3306/ecommerce?useUnicode=true&characterEncoding=utf-8";

    public static Statement createStatement() throws ClassNotFoundException, SQLException  {
        if (con==null||con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "");
            return con.createStatement();
        } else {
            return con.createStatement();
        }

    }
    public static PreparedStatement prepareStatement(String sql) throws ClassNotFoundException, SQLException  {
    	if (con==null||con.isClosed()) {
    		Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection(url, "root", "");
    		return con.prepareStatement(sql);
    	} else {
    		return con.prepareStatement(sql);
    	}
    	
    }
    public static void close(ResultSet rs) {
    	try {
			rs.getStatement().getConnection().close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			
		}
    	
    	
    }

    public static void main(String[] args) throws Exception {
    	Statement s=ConnectionDB.createStatement();
		ResultSet rs = s.executeQuery("SELECT * FROM account");
//		ResultSet rs = s.executeQuery("SELECT * FROM evaluate");
		rs.next();
		int number=(int) rs.getInt(1);
		System.out.println(number);
    }

}
