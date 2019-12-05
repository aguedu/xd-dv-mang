package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.DangNhapModel;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/DangNhap")
public class DangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

    public DangNhap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String url = "views/NguoiDung/dangnhap.jsp";
		if(request.getSession().getAttribute("IDNguoiDung") != null){
			url = "views/layouts/error.jsp";
		}else{
			url = "views/NguoiDung/dangnhap.jsp";
		} // End else if
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.include(request, response);
	} // End method doGet

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	//}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try{
			String action = request.getParameter("do");
			if(action.equals("dangnhap")){
				String tendangnhap = request.getParameter("txtTenDangNhap");
				String matkhau = request.getParameter("txtMatKhau");
				DangNhapModel login = new DangNhapModel();
				boolean result = login.checkLogin(tendangnhap, matkhau);
				String hovaten;
				int quyenhan;
				int id;
				if(result){
					// Dang nhap thanh cong thi tao cac session cho nguoi dung da dang nhap
					HttpSession session = request.getSession(true);
					hovaten = login.getHovatennguoidung(tendangnhap, matkhau);
					session.setAttribute("HoVaTen", hovaten);
					session.setAttribute("TenDangNhap", tendangnhap);
					quyenhan = login.getQuyenhannguoidung(tendangnhap, matkhau);
					session.setAttribute("QuyenHan", quyenhan);
					id = login.getIdnguoidung(tendangnhap, matkhau);
					session.setAttribute("IDNguoiDung", id);
					request.setAttribute("loginState","success");
					response.sendRedirect(""); // Trở về default
				}else{
					String url = "views/NguoiDung/dangnhap.jsp";
					// Chuyen huong ve trang o dia chi url
					request.setAttribute("oldUsername", tendangnhap);
					request.setAttribute("loginState", "error");
					RequestDispatcher rd = request.getRequestDispatcher(url);
					rd.include(request, response);
				} // End else if 
			} // End if dangnhap
		}catch(Exception e){
				e.printStackTrace();
		} // End try catch
	} // End method doPost
}