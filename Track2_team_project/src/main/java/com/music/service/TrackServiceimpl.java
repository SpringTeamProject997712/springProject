package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.AlbumVO;
import com.music.domain.PlaylistVO;
import com.music.domain.TrackVO;
import com.music.domain.jPlayerVO;
import com.music.mapper.AlbumMapper;
import com.music.mapper.CreatePlaylistMapper;
import com.music.mapper.ProductMapper;
import com.music.mapper.TrackMapper;
import com.music.utility.Criteria;
import com.music.utility.PageMaker;

import lombok.AllArgsConstructor;
import lombok.Setter;


@Service
@AllArgsConstructor
public class TrackServiceimpl implements TrackService {

	@Setter(onMethod_ = @Autowired)
	private TrackMapper mapper;
	@Setter(onMethod_ = @Autowired)
	private AlbumMapper amapper;
	@Setter(onMethod_ = @Autowired)
	private CreatePlaylistMapper cmapper;
	@Setter(onMethod_= @Autowired)
	private ProductMapper pmapper;
	
	@Override
	public List<AlbumVO> listNewly() {
		
		return mapper.listNewly();
	}
	
	@Override
	public TrackVO selectTrack(int tbno) {
		return mapper.selectTrack(tbno);
	}
	
	@Override
	public jPlayerVO convertTrackToJPlayer(TrackVO tvo) {
		jPlayerVO playlist = new jPlayerVO();
		AlbumVO avo=amapper.readAlbum(tvo.getAbno());
		
		playlist.setTbno(tvo.getTbno());
		playlist.setArtist(avo.getSinger());
		playlist.setImage(avo.getImage_50());
		playlist.setMp3("/upload/"+tvo.getSongrealname());
		playlist.setOption("myPlayListOtion");
		playlist.setTitle(tvo.getName());
		return playlist;
	}
	
	@Override
	public List<TrackVO> searchTrackList(String name) {
		return mapper.searchTrackList(name);
	}
	@Override
	public List<TrackVO> viewTrackListWithPaging(int abno) {
		return mapper.viewTrackListWithPaging(abno);
	}

	@Override
	public int updateTrack(TrackVO tvo) {
		int result = mapper.updateTrack(tvo);
		return result;
	}

	@Override
	public TrackVO viewTrackList(int tbno) {
		return mapper.viewTrackList(tbno);
	}

	@Override
	public int countSong(int abno) {
		return mapper.countSong(abno);
	}

	@Override
	public void deleteTrack(int pbno) {
		pmapper.deleteProduct(pbno);
	}
	@Override
	public String selectLength(int tbno) {
		return mapper.selectLength(tbno);
	}



}
