package edu.hcmuaf.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.hcmuaf.entity.RoleEntity;
import edu.hcmuaf.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
	UserEntity findOneByUserNameAndStatus(String name, int status);

	//List<UserEntity> findAllByRole(RoleEntity roleEntity);

	
}
