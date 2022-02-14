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
		playlist.setImage("/images/"+avo.getImage());
		playlist.setMp3(track.getSongrealname());
		playlist.setOption("<ul class='more_option'><li><a href='#'><span class='opt_icon' title='Add To Favourites'><span class='icon icon_fav'></span></span></a></li><li><a href='#'><span class='opt_icon' title='Add To Queue'><span class='icon icon_queue'></span></span></a></li><li><a href='#'><span class='opt_icon' title='Download Now'><span class='icon icon_dwn'></span></span></a></li><li><a href='#'><span class='opt_icon' title='Add To Playlist'><span class='icon icon_playlst'></span></span></a></li><li><a href='#'><span class='opt_icon' title='Share'><span class='icon icon_share'></span></span></a></li></ul>");
		playlist.setTitle(track.getName());
		return playlist;
		//추후 수정할 일
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
