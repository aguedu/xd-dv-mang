package Controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BaiVietDAO;

/**
 * Servlet implementation class BaiViet_Sua
 */
@WebServlet("/BaiViet_Sua")
public class BaiViet_Sua extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String SAVE_DIRECTORY = "/images";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BaiViet_Sua() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		int ID = Integer.parseInt(request.getParameter("ID"));
		int IDChuDe = Integer.parseInt(request.getParameter("IDChuDe"));
		String TieuDe = request.getParameter("TieuDe");
		String TomTat = request.getParameter("TomTat");
		String NoiDung= request.getParameter("NoiDung");
		   try {
	           String HinhAnh = request.getParameter("HinhAnh");
	 
	         
	         
	           new BaiVietDAO();
			BaiVietDAO.Sua(ID,IDChuDe, TieuDe, TomTat, NoiDung, HinhAnh);
	           
	         
	           response.sendRedirect("BaiViet.jsp");
	  
	           // Upload thÃ nh cÃ´ng.
	           //response.sendRedirect(request.getContextPath() + "/uploadFileResults");
	       } catch (Exception e) {
	           e.printStackTrace();
	           request.setAttribute("errorMessage", "Error: " + e.getMessage());
	           response.sendRedirect("BaiViet.jsp");


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
