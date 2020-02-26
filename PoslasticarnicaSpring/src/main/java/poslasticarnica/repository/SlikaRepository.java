package poslasticarnica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Slika;
import model.Torta;

public interface SlikaRepository extends JpaRepository<Slika, Integer> {
	
	public List<Slika> findByTorta(Torta t);
}
