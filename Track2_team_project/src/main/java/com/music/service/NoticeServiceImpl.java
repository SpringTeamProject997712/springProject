package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartRequest;

import com.music.domain.NoticeVO;
import com.music.mapper.NoticeMapper;
import com.music.utility.Criteria;
import com.music.utility.PageMaker;
import com.music.utility.UploadFileUtil;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	
		
	@Setter(onMethod_= @Autowired)
	private NoticeMapper mapper;

	@Override
	public void insertNotice(NoticeVO notice) {
		mapper.insertNotice(notice);
		
	}

	@Override
	public List<NoticeVO> listNotice() {
		List<NoticeVO> nlist = mapper.listNotice();
		return nlist;
	}

	@Override
	public NoticeVO readNotice(int wbno) {
		return mapper.readNotice(wbno);
	}
	
	@Override
	public List<NoticeVO> searchNoticeWithTitle(String title) {
		return mapper.searchNoticeWithTitle(title);
	}
	
	@Override
	public List<NoticeVO> viewNoticeListWithPaging(Criteria cri) {
		return mapper.viewNoticeListWithPaging(cri);
	}
	
	@Override
	public PageMaker pagingList(Criteria cri) {
		int amount = mapper.countNotice(cri);
		PageMaker pageMaker = new PageMaker(cri, amount);
		return pageMaker;
	}
	
	@Override
	public int updateNotice(NoticeVO nvo) {
		int result = mapper.updateNotice(nvo);
		return result;
	}

	@Override
	public NoticeVO viewNoticeList(int wbno) {
		return mapper.viewNotice(wbno);
	}
	
	@Override
	public int deleteNotice(int wbno) {
		return mapper.deleteNotice(wbno);
	}
	
}