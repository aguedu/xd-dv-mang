package Model;

public class baiviet {
	int ID;
	int IDChuDe;
	String TieuDe;
	String NoiDung;
	String TomTat;
	String HinhAnh;
	public baiviet(int iDChuDe, String tieuDe, String noiDung, String tomTat, String hinhAnh) {
		super();
		IDChuDe = iDChuDe;
		TieuDe = tieuDe;
		NoiDung = noiDung;
		TomTat = tomTat;
		HinhAnh = hinhAnh;
	}
	public baiviet() {
		// TODO Auto-generated constructor stub
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getIDChuDe() {
		return IDChuDe;
	}
	public void setIDChuDe(int iDChuDe) {
		IDChuDe = iDChuDe;
	}
	public String getTieuDe() {
		return TieuDe;
	}
	public void setTieuDe(String tieuDe) {
		TieuDe = tieuDe;
	}
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
	public String getTomTat() {
		return TomTat;
	}
	public void setTomTat(String tomTat) {
		TomTat = tomTat;
	}
	public String getHinhAnh() {
		return HinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		HinhAnh = hinhAnh;
	}
	@Override
	public String toString() {
		return "baiviet [IDChuDe=" + IDChuDe + ", TieuDe=" + TieuDe + ", NoiDung=" + NoiDung
				+ ", TomTat=" + TomTat + ", HinhAnh=" + HinhAnh + "]";
	}
}
