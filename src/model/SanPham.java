package model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SanPham {
    private String maSanPham;
    private String tenSanPham;
    private String nhaCungCap;
    private double giaBan;
    private int soLuong;
    private String hinhAnh;
    private int loai;

    public SanPham(String maSanPham, String tenSanPham, String nhaCungCap, double giaBan, int soLuong, String hinhAnh, int loai) {
        this.maSanPham = maSanPham;
        this.tenSanPham = tenSanPham;
        this.nhaCungCap = nhaCungCap;
        this.giaBan = giaBan;
        this.soLuong = soLuong;
        this.hinhAnh = hinhAnh;
        this.loai = loai;
    }
    public SanPham(){}

    public String getMaSanPham() {
        return maSanPham;
    }
    

    public int getLoai() {
		return loai;
	}
	public void setLoai(int loai) {
		this.loai = loai;
	}
	public void setMaSanPham(String maSanPham) {
        this.maSanPham = maSanPham;
    }

    public String getTenSanPham() {
        return tenSanPham;
    }

    public void setTenSanPham(String tenSanPham) {
        this.tenSanPham = tenSanPham;
    }

    public String getNhaCungCap() {
        return nhaCungCap;
    }

    public void setNhaCungCap(String nhaCungCap) {
        this.nhaCungCap = nhaCungCap;
    }

    public double getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(double giaBan) {
        this.giaBan = giaBan;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

   
    public SanPham addProduct(SanPham sp, ResultSet rs) throws SQLException {
        sp.setMaSanPham(rs.getString("masanpham"));
        sp.setTenSanPham(rs.getString("tensanpham"));
        sp.setNhaCungCap(rs.getString("nhacungcap"));
        sp.setGiaBan(rs.getDouble("giaban"));
        sp.setSoLuong(rs.getInt("soluong"));
        sp.setHinhAnh(rs.getString("hinhanh"));
        sp.setLoai(rs.getInt("loai"));
        return  sp;
    }
}