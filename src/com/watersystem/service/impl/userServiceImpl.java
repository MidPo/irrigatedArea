package com.watersystem.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.watersystem.mapper.userMapper;
import com.watersystem.po.user;
import com.watersystem.service.userService;

public class userServiceImpl implements userService {
	
	@Autowired 
	private userMapper userMapper;

	public user findUserByName(String username) throws Exception {
		
		return userMapper.findUserByName(username) ;
	}

	

}
