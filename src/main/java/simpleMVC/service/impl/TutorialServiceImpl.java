package simpleMVC.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import simpleMVC.model.User;
import simpleMVC.repository.TutorialRepository;
import simpleMVC.service.TutorialService;

@Service
public class TutorialServiceImpl implements TutorialService{
	
	@Autowired
	TutorialRepository tutorialRepository;
	
	public User saveUser(User user){
		return tutorialRepository.save(user);
	}
	
	public List<User> getAllUser(){
		return tutorialRepository.findAll();
	}
	
	public User getUserById(Long id){
		return tutorialRepository.getById(id);
	}
	
	public void deleteUserById(Long id){
		User user = tutorialRepository.getById(id);
		tutorialRepository.delete(user);
	}

}
