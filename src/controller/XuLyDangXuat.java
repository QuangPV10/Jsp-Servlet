package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/XuLyDangXuat")
public class XuLyDangXuat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public XuLyDangXuat() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession ss =request.getSession(false);
	     ss.invalidate();
	     response.sendRedirect("index.jsp");
	}

	
	
}
