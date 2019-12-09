package Model;

public class chude {
	int ID;
	String TenLoai;
	public chude(String tenLoai) {
		super();
		TenLoai = tenLoai;
	}
	public chude() {
		// TODO Auto-generated constructor stub
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getTenLoai() {
		return TenLoai;
	}
	public void setTenLoai(String tenLoai) {
		TenLoai = tenLoai;
	}
	@Override
	public String toString() {
		return "chude [TenLoai=" + TenLoai + "]";
	}
	
}
