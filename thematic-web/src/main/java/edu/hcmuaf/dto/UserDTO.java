package edu.hcmuaf.dto;

import java.util.ArrayList;
import java.util.List;

public class UserDTO extends AbstractDTO<UserDTO>{
	private String username;
	private String password;
	private String fullName;
	private Integer status;
	private List<RoleDTO> listRole = new ArrayList<>();
	private String roleCode;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public List<RoleDTO> getListRole() {
		return listRole;
	}
	public void setListRole(List<RoleDTO> listRole) {
		this.listRole = listRole;
	}
	public String getRoleCode() {
		return roleCode;
	}
	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}
	
	
	
}
