package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.domain.AlbumVO;
import com.music.mapper.AlbumMapper;
import com.music.mapper.ProductMapper;
import com.music.utility.Criteria;
import com.music.utility.PageMaker;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class AlbumServiceImpl implements AlbumService {
		
	@Setter(onMethod_= @Autowired)
	private AlbumMapper mapper;

	@Setter(onMethod_= @Autowired)
	private ProductMapper pmapper;
	
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
	@Override
	public List<AlbumVO> readAlbum_single(int abno) {
		return mapper.readAlbum_single(abno);
	}
	@Override
	public List<AlbumVO> newly() {
		return mapper.listNewly();
	}
	@Override
	public List<AlbumVO> getCountLikes() {
		return mapper.getCountLikes();
	}

	@Override
	public List<AlbumVO> searchAlbumWithTrackName(String tname) {
		return mapper.searchAlbumWithTrackName(tname);
	}
	@Override
	public List<AlbumVO> viewAlbumListWithPaging(Criteria cri) {
		return mapper.viewAlbumListWithPaging(cri);
	}

	@Override
	public PageMaker pagingList(Criteria cri) {
		int amount = mapper.countAlbum(cri);
		PageMaker pageMaker = new PageMaker(cri, amount);
		return pageMaker;
	}
	@Override
	public List<AlbumVO> topAlbums() {
		return mapper.topAlbums();
	}
	@Override
	public List<AlbumVO> allranking() {
		return mapper.allranking();
	}
	@Override
	public List<AlbumVO> selectAlbumWithKeyword(String word){
		return mapper.selectAlbumWithKeyword(word);
	}
	
	@Override
	public int updateAlbum(AlbumVO avo) {
		int result = mapper.updateAlbum(avo);
		return result;
	}

	@Override
	public AlbumVO viewAlbumList(int abno) {
		return mapper.viewAlbum(abno);
	}

	@Override
	public String calTotalLength(int abno) {
		return mapper.calTotalLength(abno);
	}

	@Override
	public void deleteAlbum(int pbno) {
		pmapper.deleteProduct(pbno);
	}
	@Override
	public AlbumVO selectBestAlbum() {
		int abno =pmapper.selectBestAlbumList().get(0).getAbno();
		return mapper.viewAlbum(abno);
	}

}
