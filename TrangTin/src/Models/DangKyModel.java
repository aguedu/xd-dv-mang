package Models;

import Classes.DangKy;
import Classes.NguoiDung;
import Models.NguoiDungModel;

public class DangKyModel{
	
	public DangKyModel(){
		// TODO Auto-generated constructor stub
		super();
	}
	
	// Tra ve true neu them thanh cong
	public boolean insertDangky(DangKy dk) throws Exception{
		NguoiDung nd = new NguoiDung();
		nd.setId(dk.getId());
		nd.setHovaten(dk.getHovaten());
		nd.setTendangnhap(dk.getTendangnhap());
		nd.setMatkhau(dk.getMatkhau());
		nd.setQuyenhan(2); // 2 là quyền User
		nd.setKhoa(0); // 0 là Không khóa
		NguoiDungModel ndModel = new NguoiDungModel();
		return ndModel.insertNguoidung(nd);
	}
}
