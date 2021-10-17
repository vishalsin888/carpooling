package com.car.pooling.service;
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.ResponseEntity;

import com.car.pooling.models.CityBean;
import com.car.pooling.models.RegisterUser;

public interface UserRegisterService{

	public RegisterUser createUser(RegisterUser user);
	
	public ResponseEntity<RegisterUser> login(String username, String password);
	
	public ResponseEntity<List<CityBean>> getCities(String chars);
	
}
