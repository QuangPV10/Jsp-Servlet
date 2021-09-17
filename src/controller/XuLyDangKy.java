package controller;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.RegisterDAO;
import model.ThanhVien;



@WebServlet("/XuLyDangKy")
public class XuLyDangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public XuLyDangKy() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String taikhoan = request.getParameter("taikhoan");
			String matkhau = request.getParameter("matkhau");
			String email = request.getParameter("email");
			String hoten = request.getParameter("hoten");
			String gioitinh = "";
			String sodienthoai = "";
			String diachi = "";
			int level = 0;
			boolean check = true;
			String err="";
			RegisterDAO rgd = new RegisterDAO();
			try {
				if (rgd.checkExistUserName(taikhoan) == true) {
					err+="Tài khoản đã tồn tại";
					check = false;
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
			request.setAttribute("err",err);
			if (check) {
				ThanhVien tv = new ThanhVien(taikhoan, matkhau, hoten,gioitinh,email, sodienthoai,  diachi, level);
				try {
					if (rgd.add(tv) == true) {
						request.getRequestDispatcher("account1.jsp").forward(request, response);
					}
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
			} else {
				request.setAttribute("taikhoan", taikhoan);
				request.setAttribute("matkhau", matkhau);
				request.setAttribute("hoten", hoten);
				request.setAttribute("email", email);
				
				request.getRequestDispatcher("register1.jsp").forward(request, response);
			}
		}
		
	}
