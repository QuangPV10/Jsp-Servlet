package model;

import java.sql.ResultSet;
import java.sql.SQLException;


public class NhaCungCap {
    private String maNhaCungCap;
    private String tenNhaCungCap;
    private String diaChi;

    public NhaCungCap(String maNhaCungCap, String tenNhaCungCap, String diaChi) {
        this.maNhaCungCap = maNhaCungCap;
        this.tenNhaCungCap = tenNhaCungCap;
        this.diaChi = diaChi;
    }
    public NhaCungCap(){}

    public String getMaNhaCungCap() {
        return maNhaCungCap;
    }

    public void setMaNhaCungCap(String maNhaCungCap) {
        this.maNhaCungCap = maNhaCungCap;
    }

    public String getTenNhaCungCap() {
        return tenNhaCungCap;
    }

    public void setTenNhaCungCap(String tenNhaCungCap) {
        this.tenNhaCungCap = tenNhaCungCap;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
    
    public NhaCungCap addProducer(NhaCungCap ncc, ResultSet rs) throws SQLException {
        ncc.setMaNhaCungCap(rs.getString("manhacungcap"));
        ncc.setTenNhaCungCap(rs.getString("tennhacungcap"));
        ncc.setDiaChi(rs.getString("diachi"));
        return  ncc;
    }
}
