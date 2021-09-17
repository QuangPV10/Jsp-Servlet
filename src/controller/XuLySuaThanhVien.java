package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_dao.ThanhVienDAO;
import model.ThanhVien;
import utils.FullPath;


@WebServlet("/Admin/pages/XuLySuaThanhVien")
public class XuLySuaThanhVien extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public XuLySuaThanhVien() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String taikhoan = request.getParameter("taikhoan");
		String action = request.getParameter("action");
		try {
		if(action.equals("sua")) {
			ThanhVien thanhvien = (ThanhVien) ThanhVienDAO.layThongTinThanhVien(taikhoan);
			request.setAttribute("suathanhvien", thanhvien);
			request.getRequestDispatcher("EditAccount.jsp").forward(request, response);
			
		}else if(action.equals("xulysua")) {
			ThanhVien thanhvien = new ThanhVien();
			thanhvien.setTaiKhoan(request.getParameter("taikhoan"));
			thanhvien.setMatKhau(request.getParameter("matkhau"));
			thanhvien.setEmail(request.getParameter("email"));
			thanhvien.setHoTen(request.getParameter("hoten"));
			thanhvien.setGioiTinh(request.getParameter("gioitinh"));
			thanhvien.setDiaChi(request.getParameter("diachi"));
			thanhvien.setSoDienThoai(request.getParameter("sodienthoai"));
			thanhvien.setLevel(Integer.parseInt(request.getParameter("level")));
			
			if(ThanhVienDAO.updateThongTinThanhVien(thanhvien)) {
				response.sendRedirect(FullPath.fullPathAdmin("manage_account.jsp"));
			}else {
				response.getWriter().println("Loi");
			}
		}else {
			response.sendRedirect(FullPath.fullPathAdmin("manage_account.jsp"));
			System.out.println("bb");
		}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
