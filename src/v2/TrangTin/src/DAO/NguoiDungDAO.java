package DAO;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Model.Connect;
import Model.nguoidung;

public class NguoiDungDAO {
	public static List<nguoidung> DanhSach()
	{
		List<nguoidung> llh = new ArrayList<nguoidung>();
		String sql = "Select * from users order by id";
		try {
			ResultSet rs = new Connect().selectData(sql);
			while(rs.next()) {
				int ID = rs.getInt("ID");
				String name = rs.getString("name");
				String username = rs.getString("username");
				String password = rs.getString("password");
				int  quyenhan = Integer.parseInt(rs.getString("quyenhan"));
				nguoidung ng = new nguoidung();
				ng.setID(ID);
				ng.setName(name);
				ng.setUsername(username);
				ng.setPassword(password);
				ng.setQuyenhan(quyenhan);
				llh.add(ng);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return llh;
	}
	public static nguoidung DanhSachTheoUserName(String username)
	{
		nguoidung ng = new nguoidung();
		String sql = "Select * from users where username = '"+username+"'";
		try {
			ResultSet rs = new Connect().selectData(sql);
			while(rs.next()) {
			int id = rs.getInt("ID");
			String name = rs.getString("name");
			String Username = rs.getString("username");
			String password = rs.getString("password");
			int quyenhan = Integer.parseInt(rs.getString("quyenhan"));
			ng.setID(id);
			ng.setName(name);
			ng.setUsername(Username);
			ng.setPassword(password);
			ng.setQuyenhan(quyenhan);
			
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ng;
	}
	public static boolean KiemTraDangNhap(String username, String password) {
		try {
			String sql = "select * from users where username= '"+username+"'";
			ResultSet  rs=new Connect().selectData(sql);
			 while(rs.next()){
				 if(rs.getString("username").equals(username) && rs.getString("password").equals(password)){
					 return true;
				 }
			 }
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return false;
	}
	public static boolean Them(String name, String username, String password)
	{
		String sql = "INSERT INTO `users`(`name`, `username`, `password`) "
				+ "VALUES ('"+name+"','"+username+"','"+password+"')";
		try {
			new Connect().excuteSql(sql);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public static boolean Sua(int id, String password) {
		String sql = "UPDATE `users` SET `password`='"+password+"' WHERE  id = '"+id+"'";
		try {
			new Connect().excuteSql(sql);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public static boolean SuaQuyenHan(int id, int quyenhan) {
		String sql = "UPDATE `users` SET `quyenhan`='"+quyenhan+"' WHERE  id = '"+id+"'";
		try {
			new Connect().excuteSql(sql);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public static boolean Xoa(int id) {
		String sql = "DELETE FROM `users` WHERE id = '"+id+"'";
		try {
			new Connect().excuteSql(sql);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
