package Models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Classes.Connect;
import Classes.ChuDe;

public class ChuDeModel {
	
	Connection connect = null;
	Statement stmt = null;
	ResultSet rs = null;

	public ChuDeModel() throws Exception{
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
	 
	// Lay het du lieu cua tbl_chude - tra ve list ChuDe
	public ArrayList<ChuDe> getDSChude() throws Exception{
		 ArrayList<ChuDe> lst = new ArrayList<ChuDe>();
		 String strSQL = "select * from tbl_chude";
		 try {
			 rs = getStatement().executeQuery(strSQL);
			 while(rs.next()){
				 int id = rs.getInt("ID");
				 String tenchude = rs.getString("TenChuDe");
				 ChuDe nd = new ChuDe(id, tenchude);
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
	public boolean insertChude(ChuDe cd) throws Exception{
		 String sql = "insert into tbl_chude(TenChuDe) values(?)";
		 PreparedStatement pst = connect.prepareStatement(sql);
		 pst.setString(1, cd.getTenchude());
		 
		 return pst.executeUpdate() > 0;
	}
	// Xoa 1 nguoidung theo id
	// Tra ve true neu xoa thanh cong
	public boolean deleteChude(int id) throws Exception{
		 String sql = "delete from tbl_chude where ID=?";
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
	public ChuDe getChudeByID(int id)throws Exception{
		 String sql = "select * from tbl_chude where ID=?";
		 PreparedStatement pst = connect.prepareStatement(sql);
		 pst.setInt(1, id);
		 ResultSet rs = pst.executeQuery();
		 ChuDe cd = null;
		 if(rs.next()){
			 int idcd = rs.getInt("ID");
			 String tenchude = rs.getString("HoVaTen");
			 cd = new ChuDe(idcd, tenchude);
		 }
		 return cd;
	}
	// Cap nhat nguoidung theo id
	public boolean updateChude(int id,ChuDe newnd) throws Exception{
		 String sql = "update tbl_chude set TenChuDe=? where ID=?";
		 PreparedStatement pst = connect.prepareStatement(sql);
		 pst.setString(1, newnd.getTenchude());
		 pst.setInt(2, newnd.getId());
		 return pst.executeUpdate()>0;
	}
}
