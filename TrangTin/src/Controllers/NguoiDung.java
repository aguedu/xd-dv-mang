package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.NguoiDungModel;

/**
 * Servlet implementation class NguoiDung
 */
@WebServlet("/NguoiDung")
public class NguoiDung extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NguoiDung() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("(GET /NguoiDung) NguoiDung");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String chon = request.getParameter("Chon");
		if(chon!=null){
			if(chon.equals("QuanLy") && ((Integer)request.getSession().getAttribute("QuyenHan") == 1)){
				System.out.println("(GET /NguoiDung?Chon=QuanLy) QuanLy");
				String url = "views/NguoiDung/danhsach.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(url);
				rd.include(request, response);
				System.out.println("(GET /NguoiDung?Chon=QuanLy) QuanLy: wait");
			}else if(chon.equals("HoSoCaNhan")){
				System.out.println("(GET /NguoiDung?Chon=HoSoCaNhan) HoSoCaNhan");
				String url = "views/NguoiDung/suahoso.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(url);
				rd.include(request, response);
				System.out.println("(GET /NguoiDung?Chon=HoSoCaNhan) HoSoCaNhan: wait");
			}else if(chon.equals("DoiMatKhau"))	{
				System.out.println("(GET /NguoiDung?Chon=DoiMatKhau) DoiMatKhau");
				String url = "views/NguoiDung/doimatkhau.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(url);
				rd.include(request, response);
				System.out.println("(GET /NguoiDung?Chon=DoiMatKhau) DoiMatKhau: wait");
			}else if(chon.equals("CapNhat") && ((Integer)request.getSession().getAttribute("QuyenHan") == 1)){
				System.out.println("(GET /NguoiDung?Chon=CapNhat) NguoiDung/CapNhat");
				int id=-1; 
				try{
					id = Integer.parseInt(request.getParameter("Id"));
					Classes.NguoiDung nd = new NguoiDungModel().getNguoidungByID(id);
					request.setAttribute("nd", nd);
					String url = "views/NguoiDung/sua.jsp";
					RequestDispatcher rd = request.getRequestDispatcher(url);
					rd.include(request, response);
					System.out.println("(GET /NguoiDung?Chon=CapNhat) CapNhat: wait");
				}catch(Exception e){
					String url = "views/layouts/error.jsp";
					RequestDispatcher rd = request.getRequestDispatcher(url);
					rd.include(request, response);
					System.out.println("(GET /NguoiDung?Chon=CapNhat) CapNhat: error");
				} // End try catch
			}else if(chon.equals("Khoa") && ((Integer)request.getSession().getAttribute("QuyenHan") == 1)){
				// Cap nhat trang thai khoa
				System.out.println("(GET /NguoiDung?Chon=Khoa) Khoa");
				int id=-1; 
				try{
					id = Integer.parseInt(request.getParameter("Id"));
					if(id != (Integer)request.getSession().getAttribute("IDNguoiDung")){
						new NguoiDungModel().khoaNguoidung(id);
						System.out.println("(GET /NguoiDung?Chon=Khoa) Khoa: success");
					}else{
						System.out.println("(GET /NguoiDung?Chon=Khoa) Khoa: admin protected");
					}
					response.sendRedirect("NguoiDung?Chon=QuanLy"); // Return view NguoiDung/QuanLy
				}catch(Exception e){
					System.out.println("(GET /NguoiDung?Chon=Khoa) Khoa: error");
					response.sendRedirect("NguoiDung?Chon=QuanLy"); // Return view NguoiDung/QuanLy
				}
			}else if(chon.equals("DangXuat")){
				System.out.println("(GET /NguoiDung?Chon=DangXuat) DangXuat");
				response.sendRedirect("DangXuat");
			}else{
				// Chọn khác
				System.out.println("(GET /NguoiDung?Chon="+chon+") NguoiDung: error");
				String url = "views/layouts/error.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(url);
				rd.include(request, response);
			} // End else if
		}else{
			response.sendRedirect("NguoiDung?Chon=QuanLy"); // Return view NguoiDung/QuanLy
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("(POST /NguoiDung) NguoiDung");
		response.setContentType("text/html; charset=UTF-8");
		String chon = request.getParameter("do");
		String oldPassword = request.getParameter("txtMatKhauCu");
		String newPassword = request.getParameter("txtMatKhauMoi");
		String confirmPassword = request.getParameter("txtXacNhanMatKhau");
		System.out.println("do="+chon+"&oldPassword="+oldPassword+"&newPassword="+newPassword+"&confirmPassword="+confirmPassword);
		if(chon!=null){
			if(chon.equals("DoiMatKhau") && (request.getSession().getAttribute("IDNguoiDung") != null) && oldPassword != null && newPassword != null && confirmPassword != null && !oldPassword.equals(newPassword) && newPassword.equals(confirmPassword)){
				System.out.println("(POST /NguoiDung?do=DoiMatKhau) DoiMatKhau");
				int id = (Integer)request.getSession().getAttribute("IDNguoiDung");
				try {
					if(new NguoiDungModel().changeMatkhau(id, oldPassword, newPassword)){
						request.setAttribute("resetpasswordState", "success");
						System.out.println("(POST /NguoiDung?do=DoiMatKhau) DoiMatKhau: success");
					}else{
						request.setAttribute("resetpasswordState", "error");
						System.out.println("(POST /NguoiDung?do=DoiMatKhau) DoiMatKhau: error");
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					request.setAttribute("resetpasswordState", "error");
					System.out.println("(POST /NguoiDung?do=DoiMatKhau) DoiMatKhau: error: "+e.getMessage());
				}
			}else{
				request.setAttribute("resetpasswordState", "error");
				System.out.println("(POST /NguoiDung?do=DoiMatKhau) DoiMatKhau: error");
			}
			String url = "views/NguoiDung/doimatkhau.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.include(request, response);
		}
	}

}
