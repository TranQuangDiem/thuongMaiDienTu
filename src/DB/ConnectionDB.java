package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class ConnectionDB {
    public static Connection con;

    public static Statement createStatement() throws ClassNotFoundException, SQLException  {
        if (con==null||con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blue?useUnicode=true&characterEncoding=utf-8", "root", "");
            return con.createStatement();
        } else {
            return con.createStatement();
        }

    }
    public static PreparedStatement prepareStatement(String sql) throws ClassNotFoundException, SQLException  {
    	if (con==null||con.isClosed()) {
    		Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useUnicode=true&characterEncoding=utf-8", "root", "");
    		return con.prepareStatement(sql);
    	} else {
    		return con.prepareStatement(sql);
    	}
    	
    }

    public static void main(String[] args) throws Exception {
    	Statement s=ConnectionDB.createStatement();
		ResultSet rs = s.executeQuery("SELECT COUNT(*) FROM (SELECT IMG,NAME,PRICE,SALE_RATE,DATE_SUBMITTED,AMOUNT_SOLD FROM product WHERE AMOUNT>0) as Y");
		rs.next();
		int number=(int) rs.getInt(1);
		System.out.println(number);
    }

}
