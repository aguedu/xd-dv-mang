package DAO;
import Model.chude;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Model.Connect;

public class ChuDeDAO {
	public static List<chude> DanhSach()
	{
		List<chude> llh = new ArrayList<chude>();
		String sql = "Select * from chude order by id";
		try {
			ResultSet rs = new Connect().selectData(sql);
			while(rs.next()) {
				int ID = rs.getInt("ID");
				String TenLoai = rs.getString("TenLoai");
				chude lh = new chude();
				lh.setID(ID);
				lh.setTenLoai(TenLoai);
				llh.add(lh);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return llh;
	}
	public static chude DanhSachTheoID(int ID)
	{
		chude lh = new chude();
		String sql = "Select * from chude where ID = '"+ID+"'";
		try {
			ResultSet rs = new Connect().selectData(sql);
			while(rs.next()) {
			int id = rs.getInt("ID");
			String TenLoai = rs.getString("TenLoai");
			lh.setID(id);
			lh.setTenLoai(TenLoai);
			
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lh;
	}
	public static boolean Them(String TenLoai)
	{
		String sql = "INSERT INTO `chude`(TenLoai) VALUES ('"+TenLoai+"')";
		try {
			new Connect().excuteSql(sql);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public static boolean Sua(int id, String TenLoai) {
		String sql = "UPDATE `chude` SET `TenLoai`='"+TenLoai+"' WHERE  ID = '"+id+"'";
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
		String sql = "DELETE FROM `chude` WHERE ID = '"+id+"'";
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
