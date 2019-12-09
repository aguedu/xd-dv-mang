package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.NguoiDungDAO;
import Model.nguoidung;

/**
 * Servlet implementation class NguoiDung_DangNhap
 */
@WebServlet("/NguoiDung_DangNhap")
public class NguoiDung_DangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NguoiDung_DangNhap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username= request.getParameter("TenDangNhap");
		String pass = request.getParameter("MatKhau");
		
		nguoidung ng = new NguoiDungDAO().DanhSachTheoUserName(username);
		System.out.println(ng);
		if(new NguoiDungDAO().KiemTraDangNhap(username, pass)){
			HttpSession session = request.getSession();
			session.setAttribute("username", ng);
			
			response.sendRedirect("index.jsp");
		}else{
			System.out.println("Loi dang nhap");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
