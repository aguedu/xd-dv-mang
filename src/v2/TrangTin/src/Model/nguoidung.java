package Model;

public class nguoidung {
	 int ID;
	 String name;
	 String username;
	 String password;
	 int quyenhan;
	public nguoidung(String name, String username, String password) {
		super();
		this.name = name;
		this.username = username;
		this.password = password;
	}
	public nguoidung() {
		// TODO Auto-generated constructor stub
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getQuyenhan() {
		return quyenhan;
	}
	public void setQuyenhan(int quyenhan) {
		this.quyenhan = quyenhan;
	}
	@Override
	public String toString() {
		return "nguoidung [name=" + name + ", username=" + username + ", password=" + password + "]";
	}
	 
}
