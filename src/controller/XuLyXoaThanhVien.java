package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import admin_dao.ThanhVienDAO;
import utils.FullPath;

@WebServlet("/XuLyXoaThanhVien")
public class XuLyXoaThanhVien extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public XuLyXoaThanhVien() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String taikhoan= request.getParameter("taikhoan");
		try {
			if(ThanhVienDAO.remove(taikhoan)){
				response.sendRedirect(FullPath.fullPathAdmin("manage_account.jsp"));
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		} 
	}


}
