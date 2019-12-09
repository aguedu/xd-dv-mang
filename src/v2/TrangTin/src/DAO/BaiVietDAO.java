package DAO;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Model.Connect;
import Model.baiviet;

public class BaiVietDAO {
	public static List<baiviet> DanhSach()
	{
		List<baiviet> llh = new ArrayList<baiviet>();
		String sql = "Select * from baiviet order by id";
		try {
			ResultSet rs = new Connect().selectData(sql);
			while(rs.next()) {
				int ID = rs.getInt("ID");
				int IDChuDe = rs.getInt("IDChuDe");
				String TieuDe = rs.getString("TieuDe");
				String NoiDung = rs.getString("NoiDung");
				String TomTat = rs.getString("TomTat");
				String HinhAnh = rs.getString("HinhAnh");
				baiviet hh = new baiviet();
				hh.setID(ID);
				hh.setIDChuDe(IDChuDe);
				hh.setTieuDe(TieuDe);
				hh.setNoiDung(NoiDung);
				hh.setTomTat(TomTat);
				hh.setHinhAnh(HinhAnh);
				llh.add(hh);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return llh;
	}
	public static baiviet DanhSachTheoID(int ID)
	{
		baiviet hh = new baiviet();
		String sql = "Select * from baiviet where ID = '"+ID+"'";
		try {
			ResultSet rs = new Connect().selectData(sql);
			while(rs.next()) {
				int id = rs.getInt("ID");
				int IDChuDe = rs.getInt("IDChuDe");
				String TieuDe = rs.getString("TieuDe");
				String NoiDung = rs.getString("NoiDung");
				String TomTat = rs.getString("TomTat");
				String HinhAnh = rs.getString("HinhAnh");
				hh.setID(id);
				hh.setIDChuDe(IDChuDe);
				hh.setTieuDe(TieuDe);
				hh.setNoiDung(NoiDung);
				hh.setTomTat(TomTat);
				hh.setHinhAnh(HinhAnh);
				
				
			
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return hh;
	}
	public static List<baiviet> DanhSachTheoThuongHieu(int ID)
	{
		List<baiviet> lhh = new ArrayList<baiviet>();
		String sql = "Select * from baiviet where IDThuongHieu = '"+ID+"'";
		try {
			ResultSet rs = new Connect().selectData(sql);
			while(rs.next()) {
				int id = rs.getInt("ID");
				int IDChuDe = rs.getInt("IDChuDe");
				String TieuDe = rs.getString("TieuDe");
				String NoiDung = rs.getString("NoiDung");
				String TomTat = rs.getString("TomTat");
				String HinhAnh = rs.getString("HinhAnh");
				
				baiviet hh = new baiviet();
				lhh.add(hh);
				
				hh.setID(id);
				hh.setIDChuDe(IDChuDe);
				hh.setTieuDe(TieuDe);
				hh.setNoiDung(NoiDung);
				hh.setTomTat(TomTat);
				hh.setHinhAnh(HinhAnh);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lhh;
	}
	public static boolean Them(int IDChuDe, String TieuDe, String TomTat, String NoiDung, String HinhAnh)
	{
		String sql = "INSERT INTO `baiviet`(`IDChuDe`, `TieuDe`, `TomTat`, `NoiDung`, `HinhAnh`) "
				+ "VALUES ('"+IDChuDe+"','"+TieuDe+"','"+TomTat+"','"+NoiDung+"',"
						+ "'"+HinhAnh+"')";
		
	
		
		try {
			new Connect().excuteSql(sql);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public static boolean Sua(int id, int IDChuDe, String TieuDe, String TomTat, String NoiDung, String HinhAnh) {
		String sql = "UPDATE `baiviet` SET `IDChuDe`='"+IDChuDe+"',"
				+ "`TieuDe`='"+TieuDe+"',`TomTat`='"+TomTat+"',"
				+ "`NoiDung`='"+NoiDung+"',`HinhAnh`='"+HinhAnh+"' WHERE ID='"+id+"'";
		
		
		
		
		
		
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
		String sql = "DELETE FROM `baiviet` WHERE ID = '"+id+"'";
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
