package Classes;

public class NguoiDung {
	 // Khai bao cac bien luu tru ung voi cac cot cua table tbl_nguoidung
	private int id;
	private String hovaten;
	private String tendangnhap;
	private String matkhau;
	private int quyenhan;
	private int khoa;
	 
	 // Ham xay dung
	 public NguoiDung(int id, String hovaten, String tendangnhap, String matkhau, int quyenhan, int khoa) {
		 this.id = id;
		 this.hovaten = hovaten;
		 this.tendangnhap = tendangnhap;
		 this.matkhau = matkhau;
		 this.quyenhan = quyenhan;
		 this.khoa = khoa;
	 }
	 // Ham xay dung
	 public NguoiDung() 
	 { }
	 // Dinh nghia cac ham get/set cho cac bien luu tru
	 // Ham get de lay gia tri cac bien
	 // Ham set de gan gia tri cho cac bien
	 public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getHovaten() {
			return hovaten;
		}
		public void setHovaten(String hovaten) {
			this.hovaten = hovaten;
		}
		public String getTendangnhap() {
			return tendangnhap;
		}
		public void setTendangnhap(String tendangnhap) {
			this.tendangnhap = tendangnhap;
		}
		public String getMatkhau() {
			return matkhau;
		}
		public void setMatkhau(String matkhau) {
			this.matkhau = matkhau;
		}
		public int getQuyenhan() {
			return quyenhan;
		}
		public void setQuyenhan(int quyenhan) {
			this.quyenhan = quyenhan;
		}
		public int getKhoa() {
			return khoa;
		}
		public void setKhoa(int khoa) {
			this.khoa = khoa;
		}
		
	 @Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result
					+ ((hovaten == null) ? 0 : hovaten.hashCode());
			result = prime * result + id;
			result = prime * result + khoa;
			result = prime * result
					+ ((matkhau == null) ? 0 : matkhau.hashCode());
			result = prime * result + quyenhan;
			result = prime * result
					+ ((tendangnhap == null) ? 0 : tendangnhap.hashCode());
			return result;
		}
	 
		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			NguoiDung other = (NguoiDung) obj;
			if (hovaten == null) {
				if (other.hovaten != null)
					return false;
			} else if (!hovaten.equals(other.hovaten))
				return false;
			if (id != other.id)
				return false;
			if (khoa != other.khoa)
				return false;
			if (matkhau == null) {
				if (other.matkhau != null)
					return false;
			} else if (!matkhau.equals(other.matkhau))
				return false;
			if (quyenhan != other.quyenhan)
				return false;
			if (tendangnhap == null) {
				if (other.tendangnhap != null)
					return false;
			} else if (!tendangnhap.equals(other.tendangnhap))
				return false;
			return true;
		}
	// Ham bam - dung ma hoa san pham - co the bo neu khong can
	public String MD5(String md5) {
		   try {
		        java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
		        byte[] array = md.digest(md5.getBytes());
		        StringBuffer sb = new StringBuffer();
		        for (int i = 0; i < array.length; ++i) {
		          sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(1,3));
		       }
		        return sb.toString();
		    } catch (java.security.NoSuchAlgorithmException e) {
		    }
		    return null;
		}	 
	}