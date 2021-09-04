package com.example.demo.service;

import java.util.List;

import com.example.demo.model.User;

public interface UserService {
	
	List<User> findAll();
	User findById(Long userId);
	User save(User user);
	User update(List<Long> rolesId, User userDetails);
	User getUserByUsername(String username);
	User saveWithoutContraint(User user);
	
}
