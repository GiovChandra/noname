package simpleMVC.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import simpleMVC.model.User;
import simpleMVC.service.TutorialService;

@Controller
public class TutorialController {
	
	@Autowired
	TutorialService tutorialService;
	
	boolean isFlagAdd=false;
	
	@GetMapping("/list")
	public String list(Model model){
		
		List<User> userList = new ArrayList<User>();
		userList = tutorialService.getAllUser();
		
		model.addAttribute("userList", userList);
		
		return "/WEB-INF/jsp/list.jsp";
	}
	
	@GetMapping("/add")
	public String addUser(Model model){
		
		User user = new User();
		isFlagAdd = true;
		model.addAttribute("user", user);
		model.addAttribute("isAdd", isFlagAdd);
		
		return "/WEB-INF/jsp/add.jsp";
	}
	
	@PostMapping("/add")
	public String insertUser(@ModelAttribute(name="user") User user, Model model){
		
		tutorialService.saveUser(user);
		
		return "redirect:/list";
	}
	
	@GetMapping("/update/{id}")
	public String getUserById(@PathVariable("id") Long id, Model model){
		
		User user = tutorialService.getUserById(id);
		isFlagAdd = false;
		model.addAttribute("user",user);
		model.addAttribute("isAdd", isFlagAdd);
		
		return "/WEB-INF/jsp/update.jsp";
	}
	
	@PutMapping("/updateUser")
	public String updateUser(@ModelAttribute(name="user") User user, Model model){
		
		tutorialService.saveUser(user);
		
		return "redirect:/list";
	}
	
	@PostMapping("/delete/{id}")
	public String deleteUserById(@PathVariable("id") Long id, Model model){
		
		tutorialService.deleteUserById(id);
		
		return "redirect:/list";
	}


}
