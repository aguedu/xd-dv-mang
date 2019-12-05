package Models;

import java.io.*;
import java.sql.*;

import Classes.Connect;

public class DangNhapModel {
	
	public DangNhapModel(){
	}
	// Kiem tra thong tin dang nhap
	public boolean checkLogin(String tendangnhap, String matkhau){
		Connection conn=null;
		try{
	
			Connect db = new Connect();
			conn = db.getConn();
			String sql = "select ID from tbl_nguoidung where TenDangNhap=? and MatKhau=md5(?)";
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1, tendangnhap);
			stm.setString(2, matkhau);
			ResultSet rs = stm.executeQuery();
			boolean result = rs.next();
			rs.close();
			stm.close();
			conn.close();
			if(result){
				return true;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	
	// Lay ID user cua nguoi dung da dang nhap
	public int getIdnguoidung(String tendangnhap, String matkhau){
		int id = 0;
		
		Connection conn=null;
		try{
			Connect db = new Connect();
			conn = db.getConn();
			String sql = "select ID from tbl_nguoidung where TenDangNhap=? and MatKhau=md5(?)";
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1, tendangnhap);
			stm.setString(2, matkhau);
			ResultSet rs = stm.executeQuery();
			while(rs.next()){ 
				id = rs.getInt("ID");
			}
			rs.close();
			stm.close();
			conn.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return id;
	}
	
	// Lay HoVaTen nguoi dung
	public String getHovatennguoidung(String tendangnhap, String matkhau){
		String hovaten = "";
		
		Connection conn=null;
		try{
			Connect db = new Connect();
			conn = db.getConn();
			String sql = "select HoVaTen from tbl_nguoidung where TenDangNhap=? and MatKhau=md5(?)";
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1, tendangnhap);
			stm.setString(2, matkhau);
			ResultSet rs = stm.executeQuery();
			while(rs.next()){ 
				hovaten = rs.getString("HoVaTen");
			}
			rs.close();
			stm.close();
			conn.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return hovaten;
	}
	
	// Lay ID user cua nguoi dung da dang nhap
	public int getQuyenhannguoidung(String tendangnhap, String matkhau){
		int quyenhan = 0;
		
		Connection conn=null;
		try{
			Connect db = new Connect();
			conn = db.getConn();
			String sql = "select QuyenHan from tbl_nguoidung where TenDangNhap=? and MatKhau=md5(?)";
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1, tendangnhap);
			stm.setString(2, matkhau);
			ResultSet rs = stm.executeQuery();
			while(rs.next()){ 
				quyenhan = rs.getInt("QuyenHan");
			}
			rs.close();
			stm.close();
			conn.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return quyenhan;
	}
}