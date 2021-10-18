package com.car.pooling.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.car.pooling.models.RegisterUser;
import com.car.pooling.service.UserRegisterService;

@RestController
public class RegisterController {
	
	@Autowired
	private UserRegisterService userRegisterService;
	
	@PostMapping("/createuser")
	public RegisterUser createUserAcc(@RequestBody RegisterUser user) {
		System.out.println("in create");
		return this.userRegisterService.createUser(user);
	}
	
	@GetMapping("/userlogin")
	public ResponseEntity<?> loginUser(
			@RequestParam("useremail") String useremail,
			@RequestParam("userpassword") String userpassword
			){
				System.out.println(useremail +" -- "+userpassword);
				return this.userRegisterService.login(useremail,userpassword);
	}
	
	@GetMapping("/searchCity/{chars}")
	public ResponseEntity<?> getCityData(@PathVariable("chars") String chars){
		return this.userRegisterService.getCities(chars);
	}
	
	@GetMapping("/searchCabs")
	public ResponseEntity<?> getCabsData(
			@RequestParam("from") String from, 
			@RequestParam("to") String to,
			@RequestParam("from_lattitude") String from_lattitude, 
			@RequestParam("from_longitude") String from_longitude, 
			@RequestParam("to_lattitude") String to_lattitude,
			@RequestParam("to_longitude") String to_longitude
			){
		return this.userRegisterService.getCabs(from, to, from_lattitude, from_longitude,to_lattitude, to_longitude);
	}
		

}
