package edu.hcmuaf.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import edu.hcmuaf.dto.UserDTO;
import edu.hcmuaf.service.IUserService;

@RestController(value = "userAPIOfAdmin")
public class UserAPI {
	@Autowired
	private IUserService userService;
	
	@PostMapping("/api/user")
	public UserDTO createRole(@RequestBody UserDTO userDTO) {
		return userService.save(userDTO);
	}
	
	@PutMapping("/api/user")
	public UserDTO updateRole(@RequestBody UserDTO userDTO) {
		return userService.save(userDTO);
	}
	
	@DeleteMapping("/api/user")
	public void deleteRole(@RequestBody long[] ids) {
		userService.delete(ids);
		
	}
}
