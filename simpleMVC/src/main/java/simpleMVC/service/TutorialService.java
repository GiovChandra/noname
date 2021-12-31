package simpleMVC.service;

import java.util.List;

import simpleMVC.model.User;

public interface TutorialService {

	public User save(User user);
	
	public List<User> getAllUser();

	public User getUserById(Long id);
		
		
	}

