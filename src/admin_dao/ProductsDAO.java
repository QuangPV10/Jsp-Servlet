package admin_dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cndtb.connectToDatabase;
import model.SanPham;

public class ProductsDAO {


	public static List<SanPham> findAll() throws SQLException {
		List<SanPham> dssp = new ArrayList<>();
		PreparedStatement pst = null;
		ResultSet rs = null;
		String sql;
		SanPham sp;
		try {
			sql = "select * from sanpham";
			pst = connectToDatabase.getConnection().prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				sp = new SanPham();
				dssp.add(sp.addProduct(sp, rs));
			}
			return dssp;
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
	

	public static boolean remove(String masanpham) {
		PreparedStatement pst = null;
		String sql;
		try {
			sql = "delete from sanpham where masanpham=?";
			pst = connectToDatabase.getConnection().prepareStatement(sql);
			pst.setString(1, masanpham);
			return pst.executeUpdate() == 1;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	
	
}
