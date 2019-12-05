package Models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Classes.Connect;
import Classes.NguoiDung;


public class NguoiDungModel {
	
	Connection connect = null;
	Statement stmt = null;
	ResultSet rs = null;

	public NguoiDungModel() throws Exception{
		// TODO Auto-generated constructor stub
		Connect db = new Connect();
        connect = db.getConn();
	}
	
     // Tao cau lenh de thuc thi truy van SQL
	 protected Statement getStatement() throws SQLException, Exception{
	 if(stmt == null){
		 stmt = connect.createStatement();
	 }
	 	return stmt;
	 }
	 
	// Lay het du lieu cua tbl_nguoidung - tra ve list NguoiDung
	public ArrayList<NguoiDung> getDSNguoidung() throws Exception{
		 ArrayList<NguoiDung> lst = new ArrayList<NguoiDung>();
		 String strSQL = "select * from tbl_nguoidung";
		 try {
			 rs = getStatement().executeQuery(strSQL);
			 while(rs.next()){
				 int id = rs.getInt("ID");
				 String hovaten = rs.getString("HoVaTen");
				 String tendangnhap = rs.getString("TenDangNhap");
				 String matkhau = rs.getString("MatKhau");
				 int quyenhan = rs.getInt("QuyenHan");
				 int khoa = rs.getInt("Khoa");
				 NguoiDung nd = new NguoiDung(id, hovaten, tendangnhap, matkhau, quyenhan, khoa);
				 lst.add(nd);
			 }
		 } catch (Exception e) {
			 throw new Exception(e.getMessage() +" Error at : " + strSQL);
		 }
		 connect.close();
		 return lst;
	}
	// Them du lieu vao tbl_nguoidung
	// Tra ve true neu them thanh cong
	public boolean insertNguoidung(NguoiDung nd) throws Exception{
		 String sql = "insert into tbl_nguoidung(HoVaTen, TenDangNhap, MatKhau, QuyenHan, Khoa) values(?,?,md5(?),?,?)";
		 PreparedStatement pst = connect.prepareStatement(sql);
		 pst.setString(1, nd.getHovaten());
		 pst.setString(2, nd.getTendangnhap());
		 pst.setString(3, nd.getMatkhau());
		 pst.setInt(4, nd.getQuyenhan());
		 pst.setInt(5, nd.getKhoa());
		 
		 return pst.executeUpdate() > 0;
		 
		 }
	// Xoa 1 nguoidung theo id
	// Tra ve true neu xoa thanh cong
	public boolean deleteNguoidung(int id) throws Exception{
		 String sql = "delete from tbl_nguoidung where ID=?";
		 PreparedStatement pst = connect.prepareStatement(sql);
		 pst.setInt(1, id);
		 return pst.executeUpdate() > 0;
	}
	// Thuc thi cau lenh SQL doi voi cac lenh Insert-Delete-Update // Co the bo
	public int executeUpdate(String strSQL) throws Exception{
		 int result = 0;
		 try {
			 result = getStatement().executeUpdate(strSQL);
		 } catch (Exception ex) {
			 throw new Exception(ex.getMessage() + " Error at: " + strSQL);
		 }finally{
			 connect.close();
		 }
		 return result;
	}
	// Lay thong tin nguoidung dua vao id
	public NguoiDung getNguoidungByID(int id)throws Exception{
		 String sql = "select * from tbl_nguoidung where ID=?";
		 PreparedStatement pst = connect.prepareStatement(sql);
		 pst.setInt(1, id);
		 ResultSet rs = pst.executeQuery();
		 NguoiDung nd = null;
		 if(rs.next()){
			 int idnd = rs.getInt("ID");
			 String hovaten = rs.getString("HoVaTen");
			 String tendangnhap = rs.getString("TenDangNhap");
			 String matkhau = rs.getString("MatKhau");
			 int quyenhan = rs.getInt("QuyenHan");
			 int khoa = rs.getInt("Khoa");
			 nd = new NguoiDung(idnd, hovaten, tendangnhap, matkhau, quyenhan, khoa);
		 }
		 return nd;
	}
	// Cap nhat nguoidung theo id
	public boolean updateNguoidung(int id,NguoiDung newnd) throws Exception{
		 String sql = "update tbl_nguoidung set HoVaTen=N?, TenDangNhap=?, MatKhau=md5(?), QuyenHan=?, Khoa=? where ID=?";
		 PreparedStatement pst = connect.prepareStatement(sql);
		 pst.setString(1, newnd.getHovaten());
		 pst.setString(2, newnd.getTendangnhap());
		 pst.setString(3, newnd.getMatkhau());
		 pst.setInt(4, newnd.getQuyenhan());
		 pst.setInt(5, newnd.getKhoa());
		 pst.setInt(6, newnd.getId());
		 return pst.executeUpdate()>0;
	}
	
	// Cap nhat khoa nguoidung theo id
	public boolean khoaNguoidung(int id) throws Exception{
		 String sql = "update tbl_nguoidung set Khoa=1-Khoa where ID=?";
		 PreparedStatement pst = connect.prepareStatement(sql);
		 pst.setInt(1, id);
		 return pst.executeUpdate()>0;
	}
	
	// Kiem tra mat khau nguoidung theo id truoc khi doi mat khau
	public boolean checkMatkhau(int id, String password) throws Exception{
		 String sql = "select ID from tbl_nguoidung where ID=? AND MatKhau=md5(?)";
		 PreparedStatement pst = connect.prepareStatement(sql);
		 pst.setInt(1, id);
		 pst.setString(2, password);
		 ResultSet rs = pst.executeQuery();
		 return (rs.next());
	}
	
	// Doi mat khau nguoidung theo id
	public boolean changeMatkhau(int id, String oldPassword, String newPassword) throws Exception{
		 if(checkMatkhau(id, oldPassword)){
			 String sql = "update tbl_nguoidung set MatKhau=md5(?) where ID=?";
			 PreparedStatement pst = connect.prepareStatement(sql);
			 pst.setString(1, newPassword);
			 pst.setInt(2, id);
			 return pst.executeUpdate()>0;
		 }else{
			 return false;
		 }
	}
}
