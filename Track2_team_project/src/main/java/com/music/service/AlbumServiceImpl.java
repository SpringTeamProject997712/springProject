package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.AlbumVO;
import com.music.mapper.AlbumMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class AlbumServiceImpl implements AlbumService {
		
	@Setter(onMethod_= @Autowired)
	private AlbumMapper mapper;

	@Override
	public void insertAlbum(AlbumVO album) {
		mapper.insertAlbum(album);
	}

	@Override
	public List<AlbumVO> listAlbum() {
		return mapper.listAlbum();
	}

	@Override
	public AlbumVO readAlbum(int abno) {
		return mapper.readAlbum(abno);
	}
	
	
	
}
