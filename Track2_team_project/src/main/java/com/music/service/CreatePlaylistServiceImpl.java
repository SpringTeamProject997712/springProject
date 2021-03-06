package com.music.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.music.domain.AlbumVO;
import com.music.domain.PlaylistVO;
import com.music.domain.jPlayerVO;
import com.music.domain.TrackVO;
import com.music.mapper.AlbumMapper;
import com.music.mapper.CreatePlaylistMapper;
import com.music.mapper.TrackMapper;
import com.music.security.domain.CustomUser;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class CreatePlaylistServiceImpl implements CreatePlaylistService {

	@Setter(onMethod_ = @Autowired)
	CreatePlaylistMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	AlbumMapper amapper;
	
	@Setter(onMethod_ = @Autowired)
	TrackMapper tmapper;
	
	@Override
	public int insertPlaylist(PlaylistVO pvo) {
		return mapper.insertPlaylist(pvo);
	}
	@Override
	public PlaylistVO selectJustOnePlaylist(int plbno) {
		return mapper.selectJustOnePlaylist(plbno);
	}
	@Override
	public int maxPlbno(String id) {
		return mapper.maxPlbno(id);
	}
	@Override
	public int minPlbno(String id) {
		return mapper.minPlbno(id);
	}
	@Override
	public int modifyPlaylist(PlaylistVO pvo) {
		return mapper.modifyPlaylist(pvo);
	}
	
	//int를 받아서 switch문을 실행합니다. 그리고 결과로 List<PlaylistVO>를 반환합니다
	@Override
	public List<jPlayerVO> selectMethod(PlaylistVO vo) {
		
		List<jPlayerVO> plist = new ArrayList<jPlayerVO>(); //여기에 담아서 리턴함
		
		//switch
		switch(vo.getMenu()){ //받은 숫자로 스위치문 가동
		
		case 2: // basic_playlist
			
			plist = addBasicPlaylist();
			break;
		
		case 1: // 랜덤 플레이 리스트
			plist = addRandomPlaylist();
			break;
		
		case 3: //plbno의 플레이리스트 반환
			plist = addMyPlaylist(vo.getPlbno());
			break;
		
		case 4: //abno의 플레이리스트 반환
			plist = addAlbumlist(vo);
			break;	
			
		}//switch end
		
		return plist;
	}
	@Override
	public int clearQue(int plbno) {
		return mapper.clearQue(plbno);
	}
	
	@Override
	public int insertBasicPlaylist(PlaylistVO pvo) {
		int result = mapper.insertBasicPlaylist(pvo);	
		return result;
	}
	@Override
	public int countPlaylist(String id) {
		return mapper.countPlaylist(id);
	}
	@Override
	public int insertPlaylistDetail(PlaylistVO vo) {
		return mapper.insertPlaylistDetail(vo);
	}
	//id와 tbno로
	@Override
	public int deletePdbnoWithIdTbno(PlaylistVO vo) {
		return mapper.deletePlaylistDetail(mapper.selectMaxPdbno(vo));
	}
	@Override
	public int deletePlaylist(PlaylistVO pvo) {
		return mapper.deletePlaylist(pvo);
	}
	@Override
	public int copyQueue(PlaylistVO pvo) {
		int plbno = mapper.maxPlbno(pvo.getId());
		int min_plbno = mapper.minPlbno(pvo.getId());
		pvo.setMin_plbno(min_plbno);
		pvo.setPlbno(plbno);
		return mapper.copyQueue(pvo);
	}

//======================================= private =======================================	
	
	//트랙 리스트를 j플레이어리스트로 변환하는 메서드
	private List<jPlayerVO> convertTrackToJPlyer(List<TrackVO> track) {
		
		List<jPlayerVO> jlist = new ArrayList<jPlayerVO>();
		for(int i=0; i<track.size(); i++) {
			jPlayerVO playlist = new jPlayerVO();
			AlbumVO avo=amapper.readAlbum(track.get(i).getAbno());
			playlist.setTbno(track.get(i).getTbno());
			playlist.setArtist(avo.getSinger());
			playlist.setImage(avo.getImage_50());
			playlist.setMp3("/upload/"+track.get(i).getSongrealname());
			playlist.setOption("myPlayListOtion");
			playlist.setTitle(track.get(i).getName());
			jlist.add(playlist);
		}
		return jlist;
		//현재 setImage 경로가 하드 코딩이라 나중에 바꿔줘야함
	};
	
	/*
	 * //plbno를 받아서 특정 플레이리스트를 select private List<PlaylistVO>
	 * selectPlaylist_view(int plbno){ return mapper.selectPlaylist(plbno); }
	 */
	
	//!!! 플레이리스트를 받아서 트랙리스트로 바꿔주는 메서드
	private List<TrackVO> convertPlaylistToTrack(List<PlaylistVO> plist){
		List<TrackVO> tlist = new ArrayList<TrackVO>();
		for(int i=0; i<plist.size(); i++ ) {
			tlist.add(tmapper.selectTrack(plist.get(i).getTbno()));
		}
		return tlist;
	}
	
	//리스트 5개 select
	private List<jPlayerVO> addRandomPlaylist() {
		List<jPlayerVO> plist = new ArrayList<jPlayerVO>();
		plist = convertTrackToJPlyer(mapper.viewTrackList5());
		return plist;
	}
	
	private List<jPlayerVO> addAlbumlist(PlaylistVO vo){
		List<jPlayerVO> plist = new ArrayList<jPlayerVO>();
		List<TrackVO> trackList =new ArrayList<TrackVO>();
		List<AlbumVO> alist = amapper.readAlbum_single(vo.getAbno());
		for(int i=0; i<alist.size();i++) {
			trackList.add(tmapper.selectTrack(alist.get(i).getTbno()));
//			PlaylistVO pvo = new PlaylistVO();
//			pvo.setAbno(vo.getAbno());
//			pvo.setTbno(trackList.get(i).getTbno());
//			pvo.setPlbno(minPlbno(vo.getId()));
//			insertPlaylistDetail(pvo);
		}
		plist=convertTrackToJPlyer(trackList);
		return plist;
	}
	
	private List<jPlayerVO> addMyPlaylist(int plbno){
		List<jPlayerVO> plist = new ArrayList<jPlayerVO>();
		List<TrackVO> trackList =new ArrayList<TrackVO>();
		List<PlaylistVO> playlist_view = mapper.selectPlaylist(plbno);
		for(int i=0; i<playlist_view.size(); i++) {
			trackList.add(tmapper.selectTrack(playlist_view.get(i).getTbno()));
			//playlist_view.get(i).setPlbno(minPlbno(playlist_view.get(i).getId()));
			//insertPlaylistDetail(playlist_view.get(i));
		}
		plist=convertTrackToJPlyer(trackList);
		return plist;
	}
	
	private List<jPlayerVO> addBasicPlaylist(){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		List<jPlayerVO> jlist = new ArrayList<jPlayerVO>();
		String id = "";
		if(!(auth.getPrincipal().equals("anonymousUser"))) {
			CustomUser user = (CustomUser)auth.getPrincipal();
			id =user.getUsername();
		}
		log.info("지금 auth가 뭡니까? : "+auth);
		if(mapper.selectBasicPlaylistPrimaryKey(id)!=null) {
		log.info("지금 String id가 뭡니까? : "+id);
		 jlist = convertTrackToJPlyer(
									convertPlaylistToTrack(
										mapper.selectPlaylist(
											mapper.selectBasicPlaylistPrimaryKey(id))));
		}
		log.info("그 이거여 이거");
		log.info(jlist);
		return jlist;
	}
	
	
}
