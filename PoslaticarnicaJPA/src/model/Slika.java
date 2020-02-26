package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the Slika database table.
 * 
 */
@Entity
@NamedQuery(name="Slika.findAll", query="SELECT s FROM Slika s")
public class Slika implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idSlika;

	private String putanja;

	//bi-directional many-to-one association to Torta
	@ManyToOne
	@JoinColumn(name="idTorta")
	private Torta torta;

	public Slika() {
	}

	public int getIdSlika() {
		return this.idSlika;
	}

	public void setIdSlika(int idSlika) {
		this.idSlika = idSlika;
	}

	public String getPutanja() {
		return this.putanja;
	}

	public void setPutanja(String putanja) {
		this.putanja = putanja;
	}

	public Torta getTorta() {
		return this.torta;
	}

	public void setTorta(Torta torta) {
		this.torta = torta;
	}

}