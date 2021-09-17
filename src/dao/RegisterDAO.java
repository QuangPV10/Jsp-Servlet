package dao;

import model.ThanhVien;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import cndtb.connectToDatabase;

public class RegisterDAO implements ObjectDAO {

    public  boolean checkExistUserName(String taikhoan) throws SQLException, ClassNotFoundException {
        ResultSet rs = null;
        PreparedStatement pst = null;
        String sql;
        try {
            sql = "select * from thanhvien where taikhoan=?";
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
   
    @Override
    public boolean add(Object obj) throws SQLException, ClassNotFoundException {
        PreparedStatement pst = null;
        try {
            String sql = "insert into thanhvien values(?,?,?,?,?,?,?,?)";
            pst = connectToDatabase.getConnection().prepareStatement(sql);
            ThanhVien thanhVien = (ThanhVien) obj;
            pst.setString(1, thanhVien.getTaiKhoan());
            pst.setString(2, thanhVien.getMatKhau());
            pst.setString(3, thanhVien.getEmail());
            pst.setString(4, thanhVien.getHoTen());
            pst.setString(5, thanhVien.getGioiTinh());
            pst.setString(6, thanhVien.getDiaChi());
            pst.setString(7, thanhVien.getSoDienThoai());
            pst.setInt(8, thanhVien.getLevel());
            pst.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            if (pst != null) {
                pst.close();
            }
        }
    }
}
