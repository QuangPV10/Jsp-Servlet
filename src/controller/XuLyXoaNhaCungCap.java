package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_dao.ProducerDAO;
import utils.FullPath;

@WebServlet("/XuLyXoaNhaCungCap")
public class XuLyXoaNhaCungCap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public XuLyXoaNhaCungCap() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String manhacungcap= request.getParameter("manhacungcap");
		try {
			if(ProducerDAO.remove(manhacungcap)){
				response.sendRedirect(FullPath.fullPathAdmin("producer.jsp"));
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		} 
	}
	}



