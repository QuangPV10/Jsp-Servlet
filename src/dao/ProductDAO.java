package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cndtb.connectToDatabase;
import model.SanPham;

public class ProductDAO {
	
	public static List<SanPham> selectPrByType(int type) {
		List<SanPham> dssp;
		SanPham sanPham;
		PreparedStatement pst = null;
		ResultSet rs = null;
		String sql;
		try {
			dssp = new ArrayList<SanPham>();
			sql = "select * from sanpham where loai=?";
			pst = connectToDatabase.getConnection().prepareStatement(sql);
			pst.setInt(1, type);
			rs = pst.executeQuery();
			while (rs.next()) {
				sanPham = new SanPham();
				dssp.add(sanPham.addProduct(sanPham, rs));
			}
			return dssp.isEmpty() ? null : dssp;
		} catch (SQLException | ClassNotFoundException e) {
			return null;
		}
	}
	
	
	
	
	public static List<SanPham> selectPrByNhaCungCap(String nhaCungCap) {
		List<SanPham> dssp1;
		SanPham sanPham;
		PreparedStatement pst = null;
		ResultSet rs = null;
		String sql;
		try {
			dssp1 = new ArrayList<SanPham>();
			sql = "select * from sanpham where nhacungcap=?";
			pst = connectToDatabase.getConnection().prepareStatement(sql);
			pst.setString(1, nhaCungCap);
			rs = pst.executeQuery();
			while (rs.next()) {
				sanPham = new SanPham();
				dssp1.add(sanPham.addProduct(sanPham, rs));
			}
			return dssp1.isEmpty() ? null : dssp1;
		} catch (SQLException | ClassNotFoundException e) {
			return null;
		}
	}
	
	public static void main(String[] args) {
		List<SanPham> dssp = selectPrByType(0);
		for (SanPham sanPham : dssp) {
			System.out.println(sanPham.getTenSanPham());
		}
	}
	
	

		public static SanPham layThongTinSanPham(String maSanPham) throws SQLException {
				Connection connection;
				SanPham sp = new SanPham();
				try {
					connection = connectToDatabase.getConnection();
					String sql = "SELECT * FROM sanpham  where maSanPham=?";
					PreparedStatement ps = connection.prepareStatement(sql);
					ps.setString(1, maSanPham);
					ResultSet rs = ps.executeQuery();
					while (rs.next()) {
						return sp.addProduct(sp, rs);
					}
					return null;
				} catch (Exception e) {
 					e.printStackTrace();
 					return null;
				}

			
		}
		public static boolean updateThongTinSanPham(SanPham sanpham) throws SQLException {
			Connection connection;
			System.out.println(sanpham.getMaSanPham()+sanpham.getTenSanPham());
			try {
				connection = connectToDatabase.getConnection();
				String sql = "update sanpham  set masanpham=?,tensanpham=?,giaban=?,soluong=?,nhacungcap=?,loai=? where masanpham=?";
				PreparedStatement ps = connection.prepareStatement(sql);
				ps.setString(1, sanpham.getMaSanPham());
				ps.setString(2, sanpham.getTenSanPham());
				ps.setDouble(3, sanpham.getGiaBan());
				ps.setInt(4, sanpham.getSoLuong());
				ps.setString(5, sanpham.getNhaCungCap());
				ps.setInt(6, sanpham.getLoai());
				ps.setString(7, sanpham.getMaSanPham());
				int a = ps.executeUpdate();
				System.out.println(a);
				return a==1;
			} catch (SQLException | ClassNotFoundException e) {
					e.printStackTrace();
					return false;
			}
			
		}
}

