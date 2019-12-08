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

import Models.DangKyModel;

/**
 * Servlet implementation class DangKy
 */
@WebServlet("/DangKy")
public class DangKy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangKy() {
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
		System.out.println("(GET /DangKy) DangKy");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String url = "views/NguoiDung/dangky.jsp";
		if(request.getSession().getAttribute("QuyenHan") == null || (Integer)request.getSession().getAttribute("QuyenHan") == 1){
			url = "views/NguoiDung/dangky.jsp";
			System.out.println("(GET /DangKy) DangKy: wait");
		}else{
			url = "views/layouts/error.jsp";
			System.out.println("(GET /DangKy) DangKy: error");
		} // End else if
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("(POST /DangKy) DangKy");
		String url = "views/layouts/error.jsp";
		Classes.DangKy dk = new Classes.DangKy();
		try {
			DangKyModel dkModel = new DangKyModel();
			dkModel.insertDangky(dk);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			request.setAttribute("registerState", "error");
			System.out.println("(POST /DangKy) DangKy: error: "+e.getMessage());
			url = "views/NguoiDung/dangky.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.include(request, response);
	}
}
