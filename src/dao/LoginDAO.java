package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cndtb.connectToDatabase;
import model.ThanhVien;

public class LoginDAO {
	public static ThanhVien checkLogin(String username, String password) throws ClassNotFoundException{
		ThanhVien thanhVien = new ThanhVien();
		PreparedStatement pst = null;
		ResultSet rs = null;
		String sql;
		try {
			sql = "select * from thanhvien where taikhoan=? and matkhau=? ";
			pst = connectToDatabase.getConnection().prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, password);
			rs = pst.executeQuery();
			if (rs.next()) {
				thanhVien.setTaiKhoan(rs.getString("taikhoan"));
				thanhVien.setMatKhau(rs.getString("matkhau"));
				thanhVien.setEmail(rs.getString("email"));
				thanhVien.setGioiTinh(rs.getString("gioitinh"));
				thanhVien.setHoTen(rs.getString("hoten"));
				thanhVien.setDiaChi(rs.getString("diachi"));
				thanhVien.setSoDienThoai(rs.getString("sodienthoai"));
				thanhVien.setLevel(rs.getInt("level"));
				return thanhVien;
			} else {
				return null;
			}
		} catch (SQLException e) {
			return null;
		}

	}
	
	
	public  boolean checkExistUserName(String taikhoan, String password) throws SQLException, ClassNotFoundException {
        ResultSet rs = null;
        PreparedStatement pst = null;
        String sql;
        try {
            sql = "select * from thanhvien where taikhoan=? and matkhau=?";
            pst = connectToDatabase.getConnection().prepareStatement(sql);
            pst.setString(1, taikhoan);
            rs = pst.executeQuery();
           return rs.next();
       } catch (SQLException e) {
         e.printStackTrace();
            return false;
        } finally {
            if (rs != null) {
                rs.close();
            }
            if(pst!=null){
                pst.close();
            }
        }
    }

}
