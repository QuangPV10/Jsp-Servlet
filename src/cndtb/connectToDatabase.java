package cndtb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;

	public class connectToDatabase {
		static Connection conn = null;

		public static Connection getConnection() throws SQLException, ClassNotFoundException {
			if (conn == null || conn.isClosed()) {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/websitebanhang?useUnicode=true&characterEncoding=utf-8", "root", "");
					return conn;
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
					return null;
				}
			} else {
				return conn;
			}

		}
		public  void thucThiSQL(String sql) throws Exception{
			Connection connect = getConnection();
			Statement stmt = connect.createStatement();
			stmt.executeUpdate(sql);
		}
		public ResultSet chonDuLieu(String sql) throws Exception{
			Connection connect = getConnection();
			Statement stmt = connect.createStatement();
			ResultSet rs=	stmt.executeQuery(sql);
			return rs;
		}
		

		public PreparedStatement dungStament(String sql) throws SQLException, Exception{
			return getConnection().prepareStatement(sql);
		}

		
	}

