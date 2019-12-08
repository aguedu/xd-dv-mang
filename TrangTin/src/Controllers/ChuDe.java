package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.ChuDeModel;

/**
 * Servlet implementation class ChuDe
 */
@WebServlet("/ChuDe")
public class ChuDe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChuDe() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("(GET /ChuDe) ChuDe");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String chon = request.getParameter("Chon");
		if(chon!=null){
			if(chon.equals("QuanLy") && ((Integer)request.getSession().getAttribute("QuyenHan") == 1)){
				System.out.println("(GET /ChuDe?Chon=QuanLy) QuanLy");
				String url = "views/ChuDe/danhsach.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(url);
				rd.include(request, response);
				System.out.println("(GET /ChuDe?Chon=QuanLy) QuanLy: wait");
			}else if(chon.equals("Them")){
				System.out.println("(GET /ChuDe?Chon=Them) Them");
				String url = "views/ChuDe/them.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(url);
				rd.include(request, response);
				System.out.println("(GET /ChuDe?Chon=Them) Them: wait");
			}else if(chon.equals("CapNhat") && ((Integer)request.getSession().getAttribute("QuyenHan") == 1)){
				System.out.println("(GET /ChuDe?Chon=CapNhat) CapNhat");
				int id=-1; 
				try{
					id = Integer.parseInt(request.getParameter("Id"));
					Classes.ChuDe cd = new ChuDeModel().getChudeByID(id);
					request.setAttribute("cd", cd);
					String url = "views/ChuDe/sua.jsp";
					RequestDispatcher rd = request.getRequestDispatcher(url);
					rd.include(request, response);
					System.out.println("(GET /ChuDe?Chon=CapNhat) CapNhat: wait");
				}catch(Exception e){
					String url = "views/layouts/error.jsp";
					RequestDispatcher rd = request.getRequestDispatcher(url);
					rd.include(request, response);
					System.out.println("(GET /ChuDe?Chon=CapNhat) CapNhat: error: "+e.getMessage());
				} // End try catch
			}else if(chon.equals("Xoa")){
				System.out.println("(GET /ChuDe?Chon=Xoa) Xoa");
				int id=-1; 
				try{
					id = Integer.parseInt(request.getParameter("Id"));
					new ChuDeModel().deleteChude(id);
					System.out.println("(GET /ChuDe?Chon=Xoa) Xoa: success");
					String url = "views/ChuDe/danhsach.jsp";
					request.setAttribute("deleteState", "success");
					RequestDispatcher rd = request.getRequestDispatcher(url);
					rd.include(request, response);
				}catch(Exception e){
					String url = "views/layouts/error.jsp";
					RequestDispatcher rd = request.getRequestDispatcher(url);
					rd.include(request, response);
					System.out.println("(GET /ChuDe?Chon=Xoa) Xoa: error: "+e.getMessage());
				} // End try catch
			} else {
				// Chọn khác
				System.out.println("(GET /ChuDe?Chon="+chon+") ChuDe: error");
				String url = "views/layouts/error.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(url);
				rd.include(request, response);
			} // End else if
		}else{
			response.sendRedirect("ChuDe?Chon=QuanLy"); // Return view ChuDe/QuanLy
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("(POST /ChuDe) ChuDe");
		response.setContentType("text/html; charset=UTF-8");
		// Khai báo biến điều hướng
		String url = "views/layouts/error.jsp";
		String chon = request.getParameter("do");
		// Khai báo biến dữ liệu từ view
		String tenChude = request.getParameter("txtTenChuDe");
		Integer id = Integer.parseInt(request.getParameter("id"));
		// Khai báo Model dùng chung
		ChuDeModel cdModel = null;
		// Khai báo Class trung chuyển dữ liệu dùng chung 
		Classes.ChuDe cd = new Classes.ChuDe();
		Integer logedInId = (request.getSession().getAttribute("IDNguoiDung")!=null) ? ((Integer)request.getSession().getAttribute("IDNguoiDung")) : -1;
		if(chon.equals("Them")){
			System.out.println("(POST /ChuDe?do=Them) Them");
			if(tenChude != null){
				System.out.println("(POST /ChuDe?do=Them) Them: wait");
				cd = new Classes.ChuDe();
				cd.setTenchude(tenChude);
				try {
					cdModel = new ChuDeModel();
					cdModel.insertChude(cd);
					url = "views/ChuDe/danhsach.jsp";
					request.setAttribute("insertState", "success");
					System.out.println("(POST /ChuDe?do=Them) Them: success");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					url = "views/ChuDe/them.jsp";
					request.setAttribute("insertState", "error");
					System.out.println("(POST /ChuDe?do=Them) Them: error: "+e.getMessage());
				}
			}
		} else if(chon.equals("CapNhat")){
			System.out.println("(POST /ChuDe?do=CapNhat) CapNhat");
			if(tenChude != null){
				try {
					cdModel = new ChuDeModel();
					cd.setTenchude(tenChude);
					cd.setId(id);
					cdModel.updateChude(id, cd);
					url = "views/ChuDe/danhsach.jsp";
					request.setAttribute("updateState", "success");
					System.out.println("(POST /ChuDe?do=CapNhat) Them: success");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					url = "views/ChuDe/sua.jsp";
					request.setAttribute("updateState", "error");
					System.out.println("(POST /ChuDe?do=CapNhat) CapNhat: error: "+e.getMessage());
				}
			}
		} else {
			url = "views/layouts/error.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.include(request, response);
	}
}
