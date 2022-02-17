package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.AlbumVO;
import com.music.mapper.TrackMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;


@Service
@AllArgsConstructor
public class TrackServiceimpl implements TrackService {

	@Setter(onMethod_ = @Autowired)
	private TrackMapper mapper;
	@Override
	public List<AlbumVO> listNewly() {
		
		return mapper.listNewly();
	}
		
	
}
