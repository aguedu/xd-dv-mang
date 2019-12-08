package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.BaiVietModel;

/**
 * Servlet implementation class BaiViet
 */
@WebServlet("/BaiViet")
public class BaiViet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BaiViet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("(GET /BaiViet) BaiViet");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String chon = request.getParameter("Chon");
		if(chon!=null){
			if(chon.equals("QuanLy") && ((Integer)request.getSession().getAttribute("QuyenHan") == 1)){
				System.out.println("(GET /BaiViet?Chon=QuanLy) QuanLy");
				String url = "views/layouts/error.jsp"; // Để tạm
				// String url = "views/BaiViet/danhsach.jsp"; // Chính thức
				RequestDispatcher rd = request.getRequestDispatcher(url);
				rd.include(request, response);
				System.out.println("(GET /BaiViet?Chon=QuanLy) QuanLy: wait");
			}else if(chon.equals("Them")){
				System.out.println("(GET /BaiViet?Chon=Them) Them");
				String url = "views/layouts/error.jsp"; // Để tạm
				// String url = "views/BaiViet/them.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(url);
				rd.include(request, response);
				System.out.println("(GET /BaiViet?Chon=Them) Them: wait");
			}else if(chon.equals("CapNhat") && ((Integer)request.getSession().getAttribute("QuyenHan") == 1)){
				System.out.println("(GET /BaiViet?Chon=CapNhat) CapNhat");
				int id=-1; 
				try{
					id = Integer.parseInt(request.getParameter("Id"));
					// Classes.BaiViet bv = new BaiVietModel().getBaivietByID(id);
					// request.setAttribute("bv", bv);
					String url = "views/layouts/error.jsp"; // Để tạm
					// String url = "views/BaiViet/sua.jsp";
					RequestDispatcher rd = request.getRequestDispatcher(url);
					rd.include(request, response);
					System.out.println("(GET /BaiViet?Chon=CapNhat) CapNhat: wait");
				}catch(Exception e){
					String url = "views/layouts/error.jsp";
					RequestDispatcher rd = request.getRequestDispatcher(url);
					rd.include(request, response);
					System.out.println("(GET /BaiViet?Chon=CapNhat) CapNhat: error");
				} // End try catch
			}else{
				// Chọn khác
				System.out.println("(GET /BaiViet?Chon="+chon+") BaiViet: error");
				String url = "views/layouts/error.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(url);
				rd.include(request, response);
			} // End else if
		}else{
			response.sendRedirect("BaiViet?Chon=QuanLy"); // Return view BaiViet/QuanLy
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
