/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

/**
 *
 * @author sienki
 */
public class Games {
    
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
    
    public Games(String id, String tytul, String opis) {
                setId(id);
                setTytul(tytul);
                setOpis(opis);
    }
}
