package model;

import java.util.List;

public class SanPhamTrongGioHang {
	String maDonHang;
	List<Item> list ;
	
	public String getMaDonHang() {
		return maDonHang;
	}
	public void setMaDonHang(String maDonHang) {
		this.maDonHang = maDonHang;
	}
	public List<Item> getList() {
		return list;
	}
	public void setList(List<Item> list) {
		this.list = list;
	}
	
	public double getPrice(String maSanPham) {
		double gia=0;
		for(int i=0; i<getList().size(); i++) {
			if(getList().get(i).getSanPham().getMaSanPham().equals(maSanPham)) {
				gia = getList().get(i).getSoLuong() * getList().get(i).getSanPham().getGiaBan();
			}
		}
		return gia;
	}
	
	
	public double total() {
		double total =0;
		for(int i=0; i<getList().size(); i++) {
			total += getPrice(getList().get(i).getSanPham().getMaSanPham());
			
			}
		return total;
		
	}
}
