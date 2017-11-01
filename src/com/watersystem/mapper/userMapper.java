package com.watersystem.mapper;

import com.watersystem.po.user;

public interface userMapper {
	
	public user findUserByName(String username) throws Exception;

}
