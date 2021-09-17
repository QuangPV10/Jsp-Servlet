package admin_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cndtb.connectToDatabase;
import model.NhaCungCap;

public class ProducerDAO {
	
	public static List<NhaCungCap> findAll() throws SQLException {
		List<NhaCungCap> dsncc = new ArrayList<>();
		PreparedStatement pst = null;
		ResultSet rs = null;
		String sql;
		NhaCungCap ncc;
		try {
			sql = "select * from nhacungcap";
			pst = connectToDatabase.getConnection().prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				 ncc= new NhaCungCap();
				 dsncc.add(ncc.addProducer(ncc, rs));
			}
			return dsncc;
		} catch (Exception e) {
			return null;
		} finally {
			if (pst != null) {
				pst.close();
			}
			if (rs != null) {
				rs.close();
			}
		}
	}
	
	
	public static NhaCungCap layThongTinNhaCungCap(String maNhaCungCap) throws SQLException {
		Connection connection;
		NhaCungCap ncc = new NhaCungCap();
		try {
			connection = connectToDatabase.getConnection();
			String sql = "SELECT * FROM nhacungcap  where maNhaCungCap=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, maNhaCungCap);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				return ncc.addProducer(ncc, rs);
			}
			return null;
		} catch (Exception e) {
				e.printStackTrace();
				return null;
		}
}
	
	
	public static boolean updateThongTinNhaCungCap(NhaCungCap nhacungcap) throws SQLException {
		Connection connection;
		System.out.println(nhacungcap.getMaNhaCungCap() +nhacungcap.getTenNhaCungCap());
		try {
			connection = connectToDatabase.getConnection();
			String sql = "update nhacungcap  set manhacungcap=?,tennhacungcap=?,diachi=? where manhacungcap=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, nhacungcap.getMaNhaCungCap());
			ps.setString(2, nhacungcap.getTenNhaCungCap());
			ps.setString(3, nhacungcap.getDiaChi());
			ps.setString(4, nhacungcap.getMaNhaCungCap());
			int a = ps.executeUpdate();
			System.out.println(a);
			return a==1;
		} catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
				return false;
		}
		
	}

	 public static boolean remove(String manhacungcap) {
		PreparedStatement pst = null;
		String sql;
		try {
			sql = "delete from nhacungcap where manhacungcap=?";
			pst = connectToDatabase.getConnection().prepareStatement(sql);
			pst.setString(1, manhacungcap);
			return pst.executeUpdate() == 1;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	 
	 
//	 public static List<SanPham> selectPrByNhaCungCap(String maNhaCungCap) {
//			List<NhaCungCap> dsncc;
//			NhaCungCap nhaCungCap;
//			PreparedStatement pst = null;
//			ResultSet rs = null;
//			String sql;
//			try {
//				dsncc = new ArrayList<NhaCungCap>();
//				sql = "select * from nhacungcap where manhacungcap=?";
//				pst = connectToDatabase.getConnection().prepareStatement(sql);
//				pst.setString(1, maNhaCungCap);
//				rs = pst.executeQuery();
//				while (rs.next()) {
//					nhaCungCap = new NhaCungCap();
//					dsncc.add(nhaCungCap.addProducer(nhaCungCap, rs));
//				}
//				return dsncc.isEmpty() ? null : dsncc;
//			} catch (SQLException | ClassNotFoundException e) {
//				return null;
//			}
//		}
}

