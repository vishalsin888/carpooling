package com.car.pooling.service.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.car.pooling.models.CityBean;
import com.car.pooling.models.RegisterUser;
import com.car.pooling.repo.RegisterUserRepo;
import com.car.pooling.service.UserRegisterService;

@Service
public class UserRegisterServiceImpl implements UserRegisterService{

	private final static String USERS_PROC = ".fetchCitiesList";
	
	@Autowired
	private RegisterUserRepo registerUserRepo;
	
    @Autowired
    private EntityManager entityManager;
    
    @Autowired
    private Environment env;
	
	@Override
	public RegisterUser createUser(RegisterUser user) {
		
		return this.registerUserRepo.save(user);
	}

	@Override
	public ResponseEntity<RegisterUser> login(String username, String password) {
		System.out.println("in impl");
		return ResponseEntity.ok(this.registerUserRepo.findByUseremailAndUserpassword(username, password));
	}

	@Override
	public ResponseEntity<List<CityBean>> getCities(String citychars) {
		//System.out.println("in get cities"+citychars);
		
		String dbName = env.getProperty("spring.jpa.properties.hibernate.default_schema");
		StoredProcedureQuery query = this.entityManager.createStoredProcedureQuery(dbName + USERS_PROC);
        query.registerStoredProcedureParameter("p_threeChars", String.class, ParameterMode.IN);
        query.setParameter("p_threeChars", citychars);
		return ResponseEntity.ok(query.getResultList());
	}

}
