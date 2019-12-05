package Classes;

public class ChuDe {
	
	int id;
	String tenchude;
	
	public ChuDe(int id, String tenchude) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.tenchude = tenchude;
	}
	public ChuDe() {
		// TODO Auto-generated constructor stub
	}
	
	// Getter and Setter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenchude() {
		return tenchude;
	}
	public void setTenchude(String tenchude) {
		this.tenchude = tenchude;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result
				+ ((tenchude == null) ? 0 : tenchude.hashCode());
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
		ChuDe other = (ChuDe) obj;
		if (id != other.id)
			return false;
		if (tenchude == null) {
			if (other.tenchude != null)
				return false;
		} else if (!tenchude.equals(other.tenchude))
			return false;
		return true;
	}
}
