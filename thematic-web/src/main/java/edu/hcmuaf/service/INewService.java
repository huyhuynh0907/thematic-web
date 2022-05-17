package edu.hcmuaf.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import edu.hcmuaf.dto.NewDTO;

public interface INewService {
	List<NewDTO> findAll();
	int getTotalItem();
	NewDTO findById(long id);
//	NewDTO insert(NewDTO newDTO);
//	NewDTO update(NewDTO newDTO);
	NewDTO save(NewDTO newDTO);
	void delete(long[] ids);
}
