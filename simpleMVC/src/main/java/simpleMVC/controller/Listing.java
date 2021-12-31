package simpleMVC.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import simpleMVC.model.User;
import simpleMVC.service.TutorialService;

@Controller
public class Listing {

	
	@Autowired
	TutorialService tutorialService;
	
	List<User> userList = new ArrayList<User>();
	
	@GetMapping("/list")
public String list(Model model) {
	
		
		
		model.addAttribute("userList",userList);
		
		return "WEB-INF/list.jsp";
	}

	@GetMapping("/add")
	public String add(Model model) {
		
		User user = new User();
		model.addAttribute("user", user);
		return "/WEB-INF/add.jsp";
	}
	
	
	@PostMapping("/add")
	public String insertUser(@ModelAttribute(name="user") User user, Model model) {			
		tutorialService.save(user);
		return "redirect:/list";
		
	}
	
		
	@GetMapping("/update/{id}")
		public String getUserById(@PathVariable("id")Long id, Model model ) {	
		
		User user = tutorialService.getUserById(id);
		model.addAttribute("user",user);
		return "/WEB-INF/update.jsp";
	}
	
	@PutMapping("/update")
	public String updateUser(@ModelAttribute(name="user")User user, Model model) {
		
		tutorialService.save(user);
		return "redirect/list";
	}
	}


	

