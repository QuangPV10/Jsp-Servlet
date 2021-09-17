package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Item;
import model.SanPhamTrongGioHang;
import utils.FullPath;

@WebServlet("/XuLyThanhToan")
public class XuLyThanhToan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public XuLyThanhToan() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		SanPhamTrongGioHang cart =(SanPhamTrongGioHang) session.getAttribute("cart");
		String action = request.getParameter("action");
		if(cart!=null) {
			if(action==null) {
				cart.setList(new ArrayList<Item>());
				session.setAttribute("cart", cart);
				response.sendRedirect(FullPath.fullPath("cart.jsp"));
				
			}else if(action!=null && action.equals("login")){
				response.sendRedirect(FullPath.fullPath("account1.jsp"));
			}
			
		}
		
	}


}
