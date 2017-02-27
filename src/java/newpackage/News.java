package newpackage;

/**
 *
 * @author sienki
 */
public class News {
    
    String id;
    String tytul;
    String opis;
    
    
    public String getId() {
		return id;
	}
    public String getTytul() {
		return tytul;
	}
    public String getOpis(){
                return opis;
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
    
    public News(String id, String tytul, String opis) {
                setId(id);
                setTytul(tytul);
                setOpis(opis);
    }
    
    
    
}
