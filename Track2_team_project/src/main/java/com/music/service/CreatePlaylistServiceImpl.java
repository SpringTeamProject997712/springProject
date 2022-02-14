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
	
	//trackVO를 playlistVO로 변환하는 메서드
	private PlaylistVO trackToPlaylist(TrackVO track) {
		PlaylistVO playlist = new PlaylistVO();
		AlbumVO avo=amapper.readAlbum(track.getAbno());
		playlist.setArtist(avo.getSinger());
		playlist.setImage(avo.getImage());
		playlist.setMp3(track.getSongrealname());
		playlist.setOption("myPlayListOtion");
		playlist.setTitle(track.getName());
		return playlist;
		
		//myPlayListOtion 어케하냐
	};
	
	@Override
	public List<PlaylistVO> addRandomPlaylist() {
		List<TrackVO> track = mapper.viewTrackList5();
		List<PlaylistVO> plist = new ArrayList<PlaylistVO>();
		for(int i=0; i<track.size(); i++) {
			PlaylistVO pvo = trackToPlaylist(track.get(i));
			plist.add(pvo);
		}
		return plist;
	}
}
