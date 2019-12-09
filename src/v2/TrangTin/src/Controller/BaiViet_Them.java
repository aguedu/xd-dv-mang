package Controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DAO.BaiVietDAO;

/**
 * Servlet implementation class BaiViet_Them
 */
@WebServlet("/BaiViet_Them")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
    maxFileSize = 1024 * 1024 * 50, // 50MB
    maxRequestSize = 1024 * 1024 * 50) // 50MB

public class BaiViet_Them extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String SAVE_DIRECTORY = "/images";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BaiViet_Them() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
	 }
	
	 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		int IDChuDe = Integer.parseInt(request.getParameter("IDChuDe"));
	 	String TomTat= request.getParameter("TomTat");
	    String TieuDe = request.getParameter("TieuDe");
		String NoiDung= request.getParameter("NoiDung");
		String HinhAnh = request.getParameter("HinhAnh");
	    try {	    	 
	         BaiVietDAO.Them(IDChuDe, TieuDe, TomTat, NoiDung, HinhAnh);
	         response.sendRedirect("BaiViet.jsp");
	         System.out.println(HinhAnh);
	    } catch (Exception e) {
	         e.printStackTrace();
	         request.setAttribute("errorMessage", "Error: " + e.getMessage());
	         response.sendRedirect("BaiViet.jsp");
	    }
	}
}
