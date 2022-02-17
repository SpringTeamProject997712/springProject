package com.music.utility;

import lombok.Data;

@Data
public class PageMaker {

	private int startPage;
	private int endPage;
	private boolean prev, next;
	private int total;
	private Criteria cri;
		
	public PageMaker(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		this.endPage = (int)(Math.ceil(cri.getPageNum() / 10.0)) * 10 ; // 페이지 그룹의 끝 찾기
		this.startPage = this.endPage - 9; //시작 페이지 찾기
		int realEnd = (int)(Math.ceil((total*1.0)/cri.getAmount()));
		//ㄴ페이지 그룹의 끝이 실제 페이지 끝보다 큰지 체크함
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		} //실제 페이지 끝 보다 크면 실제 페이지 끝을 페이지의 끝으로 변경함
		this.prev = this.startPage > 1;  //시작하는 페이지가 1보다 크면 이전버튼 활성화
		this.next = this.endPage < realEnd; //끝이 아니면 다음버튼 활성화
	}
}
