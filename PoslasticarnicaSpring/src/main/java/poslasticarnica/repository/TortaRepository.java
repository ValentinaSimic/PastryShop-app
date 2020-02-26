package poslasticarnica.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Torta;

public interface TortaRepository extends JpaRepository<Torta, Integer> {
	
	public Torta findByNaziv(String naziv);
	
	
}
