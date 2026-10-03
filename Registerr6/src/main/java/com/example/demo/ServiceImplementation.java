package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServiceImplementation implements SpringService{
	@Autowired
	SpringRepository springrepository;
	public void Register(SpringEntity model) {
		
		springrepository.save(model);
	}

}