package poslasticarnica.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Komentar;
import model.Torta;

public interface KomentarRepository extends JpaRepository<Komentar, Integer> {
	
	public List<Komentar> findByTorta(Torta t);
	
}
