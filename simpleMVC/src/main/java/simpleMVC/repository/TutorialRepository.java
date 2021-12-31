package simpleMVC.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import simpleMVC.model.User; 

public interface TutorialRepository extends JpaRepository<User,Long> {

	User getById(Long id);

}
