package domain;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class TortaImage implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private int idTorta;
	private String naziv;
	private int cena;
	private String opis;
	private MultipartFile slika;
	
	
	public int getIdTorta() {
		return idTorta;
	}


	public void setIdTorta(int idTorta) {
		this.idTorta = idTorta;
	}


	public String getNaziv() {
		return naziv;
	}


	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}


	public int getCena() {
		return cena;
	}


	public void setCena(int cena) {
		this.cena = cena;
	}


	public String getOpis() {
		return opis;
	}


	public void setOpis(String opis) {
		this.opis = opis;
	}


	public MultipartFile getSlika() {
		return slika;
	}


	public void setSlika(MultipartFile slika) {
		this.slika = slika;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}