package edu.hcmuaf.service;

import java.util.List;

import edu.hcmuaf.dto.UserDTO;

public interface IUserService {

	List<UserDTO> findAll();

	UserDTO findById(Long id);

	UserDTO save(UserDTO userDTO);

	void delete(long[] ids);

	UserDTO saveStatus(UserDTO userDTO);


}
