package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.GenresVO;
import com.music.mapper.GenresMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class GenresServiceimpl implements GenresService {

	@Setter(onMethod_= @Autowired)
	private GenresMapper mapper;
	
	@Override
	public List<GenresVO> genresView(String genre) {
		return mapper.genresView(genre);
	}
	
	
}
