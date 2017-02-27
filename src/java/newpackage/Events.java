package newpackage;

/**
 *
 * @author sienki
 */
public class Events {
    
    String id;
    String tytul;
    String opis;
    String data;
    
    public String getId() {
		return id;
	}
    public String getTytul() {
		return tytul;
	}
    public String getOpis(){
                return opis;
        }
    public String getData(){
                return data;
    }
    
    public void setId(String id) {
		this.id = id;
	}
    public void setTytul(String tytul) {
		this.tytul = tytul;
	}
    public void setOpis(String opis) {
                this.opis = opis;
        }
    public void setData(String data) {
                this.data = data;
    }
    
    public Events(String id, String tytul, String opis, String data) {
                setId(id);
                setTytul(tytul);
                setOpis(opis);
                setData(data);
    }
    
    
    
}