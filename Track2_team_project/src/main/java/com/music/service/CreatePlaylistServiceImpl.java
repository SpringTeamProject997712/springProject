package com.music.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.AlbumVO;
import com.music.domain.PlaylistVO;
import com.music.domain.TrackVO;
import com.music.mapper.AlbumMapper;
import com.music.mapper.CreatePlaylistMapper;

import lombok.Setter;

@Service
public class CreatePlaylistServiceImpl implements CreatePlaylistService {

	@Setter(onMethod_ = @Autowired)
	CreatePlaylistMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	AlbumMapper amapper;
	
	//int를 받아서 switch문을 실행합니다. 그리고 결과로 List<PlaylistVO>를 반환합니다
	@Override
	public List<PlaylistVO> selectMethod(int menu) {
		
		List<PlaylistVO> plist = new ArrayList<PlaylistVO>(); //여기에 담아서 리턴함
		
		//switch
		switch(menu){ //받은 숫자로 스위치문 가동
		
		case 1: // 랜덤 플레이 리스트
			plist = addRandomPlaylist();
			break;
		
		}//switch end
		
		return plist;
	}
	
	//trackVO를 playlistVO로 변환하는 메서드
	private PlaylistVO trackToPlaylist(TrackVO track) {
		PlaylistVO playlist = new PlaylistVO();
		AlbumVO avo=amapper.readAlbum(track.getAbno());
		playlist.setArtist(avo.getSinger());
		playlist.setImage("/images/"+avo.getImage());
		playlist.setMp3(track.getSongrealname());
		playlist.setOption("myPlayListOtion");
		playlist.setTitle(track.getName());
		return playlist;
		
		//현재 setImage 경로가 하드 코딩이라 나중에 바꿔줘야함
	};
	
	private List<PlaylistVO> addRandomPlaylist() {
		List<TrackVO> track = mapper.viewTrackList5();
		List<PlaylistVO> plist = new ArrayList<PlaylistVO>();
		for(int i=0; i<track.size(); i++) {
			PlaylistVO pvo = trackToPlaylist(track.get(i));
			plist.add(pvo);
		}
		return plist;
	}
}
