package model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ThanhVien {
    private String taiKhoan;
    private String matKhau;
    private String hoTen;
    private String gioiTinh;
    private String email;
    private String soDienThoai;
    private String diaChi;
    private int level;
    public ThanhVien(String taiKhoan, String matKhau, String hoTen, String gioiTinh, String email, String soDienThoai, String diaChi, int level) {
        this.taiKhoan = taiKhoan;
        this.matKhau = matKhau;
        this.hoTen = hoTen;
        this.gioiTinh = gioiTinh;
        this.email = email;
        this.soDienThoai = soDienThoai;
        this.diaChi = diaChi;
        this.level = level;
    }
    public ThanhVien(){}

    public String getTaiKhoan() {
        return taiKhoan;
    }

    public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public void setTaiKhoan(String taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
    
    public ThanhVien addThanhVien(ThanhVien tv, ResultSet rs) throws SQLException {
        tv.setTaiKhoan(rs.getString("taikhoan"));
        tv.setMatKhau(rs.getString("matkhau"));
        tv.setEmail(rs.getString("email"));
        tv.setHoTen(rs.getString("hoten"));
        tv.setGioiTinh(rs.getString("gioitinh"));
        tv.setDiaChi(rs.getString("diachi"));
        tv.setSoDienThoai(rs.getString("sodienthoai"));
        tv.setLevel(rs.getInt("level"));
        return  tv;
    }

   



}
