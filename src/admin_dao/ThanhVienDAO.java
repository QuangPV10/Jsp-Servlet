package admin_dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cndtb.connectToDatabase;
import model.ThanhVien;

public class ThanhVienDAO {
	
    public static List<ThanhVien> findAll() throws SQLException {
        List<ThanhVien> dstv = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql;
        ThanhVien tv;
        try {
            sql = "select * from thanhvien";
            pst = connectToDatabase.getConnection().prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
            	 tv= new ThanhVien();
				 dstv.add(tv.addThanhVien(tv, rs));

            }
            return dstv;
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
    
    
    
    public static boolean updateThongTinThanhVien(ThanhVien thanhvien) throws SQLException {
		Connection connection;
		System.out.println(thanhvien.getTaiKhoan()+thanhvien.getMatKhau());
		try {
			connection = connectToDatabase.getConnection();
			String sql = "update thanhvien  set taikhoan=?,matkhau=?,email=?,hoten=?,gioitinh=?,diachi=?,sodienthoai=?,level=?  where taihkoan=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, thanhvien.getTaiKhoan());
			ps.setString(2, thanhvien.getMatKhau());
			ps.setString(3, thanhvien.getEmail());
			ps.setString(4, thanhvien.getHoTen());
			ps.setString(5, thanhvien.getGioiTinh());
			ps.setString(6, thanhvien.getDiaChi());
			ps.setString(7, thanhvien.getSoDienThoai());
			ps.setInt(8, thanhvien.getLevel());
			ps.setString(9, thanhvien.getTaiKhoan());
			int a = ps.executeUpdate();
			System.out.println(a);
			return a==1;
		} catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
				return false;
		}
		
	}
    
    public static boolean remove(String taikhoan) {
		PreparedStatement pst = null;
		String sql;
		try {
			sql = "delete from thanhvien where taikhoan=?";
			pst = connectToDatabase.getConnection().prepareStatement(sql);
			pst.setString(1, taikhoan);
			return pst.executeUpdate() == 1;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
    
    public static ThanhVien layThongTinThanhVien(String taiKhoan) throws SQLException {
		Connection connection;
		ThanhVien thanhvien = new ThanhVien();
		try {
			connection = connectToDatabase.getConnection();
			String sql = "SELECT * FROM thanhvien  where taiKhoan=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, taiKhoan);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				return thanhvien.addThanhVien(thanhvien, rs);
			}
			return null;
		} catch (Exception e) {
				e.printStackTrace();
				return null;
		}
}
    
	
	public boolean checkAccountExits(String username) {
		String sql = "select * from thanhvien where taikhoan='" + username + "'";
		connectToDatabase cdtb = new connectToDatabase();
		try {
			ResultSet rs = cdtb.chonDuLieu(sql);
			while (rs.next()) {
				if (rs.getString("taikhoan").equals(username)) {
					return true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}
	
	
	public ThanhVien layThongTinforMail(String taikhoan) {
		connectToDatabase cdtb = new connectToDatabase();
		try {
			ResultSet rs = cdtb.chonDuLieu("select * from thanhvien where taikhoan='" + taikhoan+ "'");
			while (rs.next()) {
				String tentaikhoan = rs.getString("taikhoan");
				String matkhau = rs.getString("matkhau");
				String hoten = rs.getString("hoten");
				String gioitinh = rs.getString("gioitinh");
				String email = rs.getString("email");
				String sodienthoai = rs.getString("sodienthoai");
				String diachi = rs.getString("diachi");
				int level = rs.getInt("level");
				return new ThanhVien( tentaikhoan, matkhau, hoten, gioitinh, email, sodienthoai, diachi, level);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return null;
	}

	}

