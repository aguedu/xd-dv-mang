package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;

import javax.print.attribute.ResolutionSyntax;
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
		int id=-1;
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
			}else if(chon.equals("DangKy")){
				System.out.println("(GET /NguoiDung?Chon=DangKy) DangKy");
				response.sendRedirect("DangKy"); // Return DangKy 
			}else if(chon.equals("CapNhat") && ((Integer)request.getSession().getAttribute("QuyenHan") == 1)){
				System.out.println("(GET /NguoiDung?Chon=CapNhat) CapNhat");
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
			}else if(chon.equals("Xoa") && ((Integer)request.getSession().getAttribute("QuyenHan") == 1)){
				System.out.println("(GET /NguoiDung?Chon=Xoa) Xoa");
				try {
					NguoiDungModel ndModel = new NguoiDungModel();
					id = Integer.parseInt(request.getParameter("Id"));
					ndModel.deleteNguoidung(id);
					request.setAttribute("deleteState", "success");
					System.out.println("(GET /NguoiDung?do=Xoa) Xoa: success");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					request.setAttribute("deleteState", "error");
					System.out.println("(GET /NguoiDung?do=Xoa) Xoa: error: "+e.getMessage());
				}
				response.sendRedirect("NguoiDung?Chon=QuanLy");
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
		// Khai báo biến điều hướng
		String url = "views/layouts/error.jsp";
		String chon = request.getParameter("do");
		// Khai báo biến dữ liệu từ view
		String password = request.getParameter("txtMatKhau");
		String oldPassword = request.getParameter("txtMatKhauCu");
		String newPassword = request.getParameter("txtMatKhauMoi");
		String confirmPassword = request.getParameter("txtXacNhanMatKhau");
		String userName = (String)request.getParameter("txtHoVaTen");
		String role = request.getParameter("selectQuyenHan");
		String loginName = request.getParameter("txtTenDangNhap");
		String khoa = request.getParameter("khoa");		// Khai báo dữ liệu bên trong phiên
		String oldUserName = (String)request.getSession().getAttribute("HoVaTen");
		Integer id = (request.getParameter("id") != null) ? Integer.parseInt(request.getParameter("id")) : null;

		// Khai báo Model dùng chung
		NguoiDungModel ndModel = null;
		// Khai báo Class trung chuyển dữ liệu dùng chung 
		Classes.NguoiDung nd = new Classes.NguoiDung();

		Integer logedInId = (request.getSession().getAttribute("IDNguoiDung")!=null) ? ((Integer)request.getSession().getAttribute("IDNguoiDung")) : null;
		if(chon.equals("DoiMatKhau")){
			System.out.println("(POST /NguoiDung?do=DoiMatKhau) DoiMatKhau");
			url = "views/NguoiDung/doimatkhau.jsp";
			if( logedInId != null && oldPassword != null && newPassword != null && confirmPassword != null && !oldPassword.equals(newPassword) && newPassword.equals(confirmPassword)){
				System.out.println("(POST /NguoiDung?do=DoiMatKhau) DoiMatKhau: wait");
				try {
					if(!new NguoiDungModel().changeMatkhau(logedInId, oldPassword, newPassword)){
						request.setAttribute("resetpasswordState", "error");
						System.out.println("(POST /NguoiDung?do=DoiMatKhau) DoiMatKhau: error");
					} // End if
				} catch (Exception e) {
					// TODO Auto-generated catch block
					request.setAttribute("resetpasswordState", "error");
					System.out.println("(POST /NguoiDung?do=DoiMatKhau) DoiMatKhau: error: "+e.getMessage());
				} // End try catch
			} // End if
			request.setAttribute("resetpasswordState", "success");
			System.out.println("(POST /NguoiDung?do=DoiMatKhau) DoiMatKhau: success");
		} else if(chon.equals("CapNhatHoSo")){
			System.out.println("(POST /NguoiDung?do=CapNhatHoSo) CapNhatHoSo");
			url = "views/NguoiDung/suahoso.jsp";
			// System.out.println("id="+id+"&xacnhanMatkhau="+xacnhanMatkhauCapNhatHoSo+"&newHovaten="+newHovaten+"&oldHovaten="+oldHovaten);
			if(logedInId != -1 && confirmPassword != null && userName != null && !userName.equals(oldUserName)){
				System.out.println("(POST /NguoiDung?do=CapNhatHoSo) CapNhatHoSo: wait");
				try {
					if(!(new NguoiDungModel().checkMatkhau(logedInId, confirmPassword))){
						request.setAttribute("updateState", "error");
						System.out.println("(POST /NguoiDung?do=CapNhatHoSo) CapNhatHoSo: error");
					} else {
						ndModel = new NguoiDungModel();
						nd = new Classes.NguoiDung();
						nd = ndModel.getNguoidungByID(logedInId);
						nd.setHovaten(userName);
						nd.setMatkhau(confirmPassword);
						if(!ndModel.updateNguoidung(logedInId, nd)){
							request.setAttribute("updateState", "error");
							System.out.println("(POST /NguoiDung?do=CapNhatHoSo) CapNhatHoSo: error");
						}else{
							request.getSession(true).setAttribute("HoVaTen",new String(userName.getBytes("ISO-8859-1"),"UTF-8"));
							request.setAttribute("updateState", "success");
							System.out.println("(POST /NguoiDung?do=CapNhatHoSo) CapNhatHoSo: success");
						} // End else if
					} // End else if
				} catch (Exception e) {
					// TODO Auto-generated catch block
					request.setAttribute("updateState", "error");
					System.out.println("(POST /NguoiDung?do=CapNhatHoSo) CapNhatHoSo: error: "+e.getMessage());
				}
			}
		} else if(chon.equals("Them")){
			System.out.println("(POST /NguoiDung?do=Them) Them");
			url = "views/NguoiDung/dangky.jsp";
			if(role != null && loginName != null && userName != null && password != null && password.equals(confirmPassword)){
				System.out.println("(POST /NguoiDung?do=Them) Them: wait");
				try{
					ndModel = new NguoiDungModel();
					nd = new Classes.NguoiDung();
					nd.setQuyenhan(Integer.parseInt(role));
					nd.setHovaten(userName);
					nd.setTendangnhap(loginName);
					nd.setKhoa(Integer.parseInt(khoa));
					nd.setMatkhau(password);
					ndModel.insertNguoidung(nd);
					request.setAttribute("registerState", "success");
					System.out.println("(POST /NguoiDung?do=Them) Them: success");
				} catch (Exception e){
					request.setAttribute("registerState", "error");
					System.out.println("(POST /NguoiDung?do=Them) Them: error");
				}
			}
		} else if (chon.equals("CapNhat")) {
			System.out.println("(POST /NguoiDung?do=CapNhat) CapNhat");
			url = "views/NguoiDung/sua.jsp";
			if(role != null && userName != null && khoa != null && id != null){
				System.out.println("(POST /NguoiDung?do=CapNhat) CapNhat: wait");
				try{
					ndModel = new NguoiDungModel();
					nd = new Classes.NguoiDung();
					nd.setQuyenhan(Integer.parseInt(role));
					nd.setHovaten(userName);
					nd.setTendangnhap(loginName);
					nd.setId(id);
					if(password != null && password.equals(confirmPassword)){
						nd.setMatkhau(password);
						ndModel.updateNguoidung(id, nd);
					}else{
						ndModel.updateNguoidungExceptPassword(id, nd);
					}
					nd.setHovaten(new String(nd.getHovaten().getBytes("ISO-8859-1"),"UTF-8"));
					request.setAttribute("nd", nd);
					request.setAttribute("updateState", "success");
					System.out.println("(POST /NguoiDung?do=CapNhat) CapNhat: success");
				} catch (Exception e){
					request.setAttribute("updateState", "error");
					System.out.println("(POST /NguoiDung?do=CapNhat) CapNhat: error: "+e.getMessage());
				}
			}
		}else {
			response.sendRedirect("");
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.include(request, response);
	}
}
