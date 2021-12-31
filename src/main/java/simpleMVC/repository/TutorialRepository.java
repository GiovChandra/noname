package simpleMVC.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import simpleMVC.model.User;

@Repository
public interface TutorialRepository extends JpaRepository<User,Long>{
	
	@Query(value="Select u from User u where u.id = ?1")
	public User getById(Long id);

}
