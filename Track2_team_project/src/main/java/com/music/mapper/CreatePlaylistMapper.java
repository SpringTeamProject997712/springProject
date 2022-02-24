package com.music.mapper;

import java.util.List;

import com.music.domain.PlaylistVO;
import com.music.domain.TrackVO;
import com.music.domain.ViewPlaylistDetailVO;

public interface CreatePlaylistMapper {

	//트랙리스트 뽑아옴
	public List<TrackVO> viewTrackList();
	
	//트랙리스트 5개 뽑아옴
	public List<TrackVO> viewTrackList5();
	
	//회원가입하면 베이직 플레이리스트 만들어줌(Que용)
	public int insertBasicPlaylist(PlaylistVO pvo);
	
	//플레이리스트 만들기
	public int insertPlaylist(PlaylistVO pvo);
	
	//id로 basic_playlist의 plbno를 찾음
	public Integer selectBasicPlaylistPrimaryKey(String id);
	
	//id로 플레이리스트와 플레이리스트 디테일들 소환
	public List<PlaylistVO> selectPlaylistwithId(String id);
	
	//id로 플레이리스트와 그 플레이리스트의 트랙 개수들 소환
	public List<PlaylistVO> readPlaylistsWithId(String id);
	
	//트랙 개수 소환
	public Integer countTrack(int plbno);
	
	//플레이리스트 번호로 플레이리스트와 플레이리스트 디테일 소환
	public List<PlaylistVO> selectPlaylist(int plbno);
	
	//플레이리스트 번호로 플레이리스트의 모든것 소환
	public List<ViewPlaylistDetailVO> selectOnePlaylist(int plbno);
	
	//트랙 개수를 구함
	public Integer countPlaylist(String id);
	
	//가장 최근에 만들어진 plbno 구함
	public Integer maxPlbno(String id);
	
	//최초에 만들어진 plbno 구함
	public Integer minPlbno(String id);
	
	//플레이리스트에 트랙 추가함
	public int insertPlaylistDetail(PlaylistVO vo);
	
	//id랑 tbno를 plbno 이용해서 가장 큰 pdbno 찾음
	public Integer selectMaxPdbno(PlaylistVO vo);
	
	//pdbno로 PlaylistDetail 삭제
	public int deletePlaylistDetail(int pdbno);
	
	//플레이 리스트 안에있는 플레이리스트 디테일
	public List<PlaylistVO> selectPlaylistDetails(int plbno);
	
	//플레이리스트 초기화
	public int clearQue(int plbno);
	
	//아이디와 플레이리스트 번호 그리고 이름으로 플레이리스트 이름 수정하기
	public int modifyPlaylist(PlaylistVO pvo);
}
