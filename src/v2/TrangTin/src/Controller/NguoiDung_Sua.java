package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DAO.NguoiDungDAO;


/**
 * Servlet implementation class NguoiDung_Sua
 */
@WebServlet("/NguoiDung_Sua")
public class NguoiDung_Sua extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NguoiDung_Sua() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] ID = request.getParameterValues("ID");
		String[] QuyenHan = request.getParameterValues("quyenhan");
		for (int i = 0; i < ID.length; i++) {
			int id = Integer.parseInt(ID[i]);
			int quyenhan = Integer.parseInt(QuyenHan[i]);
			NguoiDungDAO.SuaQuyenHan(id, quyenhan);
			
		}
		response.sendRedirect("NguoiDung.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
