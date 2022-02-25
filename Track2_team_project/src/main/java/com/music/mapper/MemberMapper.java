package com.music.mapper;

import java.util.List;

import com.music.domain.FavouriteVO;
import com.music.domain.MemberVO;
import com.music.domain.Member_authVO;
import com.music.utility.Criteria;

public interface MemberMapper {

	public int registMember(MemberVO vo); //회원가입
	public int registMemberAuth(MemberVO vo); //권한 추가 (ROLE_MEMBER)
	public MemberVO viewMember(String id); //id를 통해 유저 정보 가져오기
	public List<MemberVO> viewMemberList(); //멤버 리스트 가져오기
	public List<MemberVO> viewMemberListWithPaging(Criteria cri); //멤버리스트 페이징해서 가져오기
	public int checkMemberWithId(String id); //같은 아이디를 가진 멤버가 있는지 체크하기 있으면 1 없으면 0이 나옴
	public int updateMember(MemberVO mvo); //멤버 정보 수정하기
	public int countMember(Criteria cri);
	public int deleteMember(String id);
	public int updateMemberActive(String id);
//	public int nextPage();
	public int deleteAuth(String id);//권한 전부 삭제
	public int insertAuth(Member_authVO vo);//권한 하나 추가
	public List<FavouriteVO> favouritesView(String id);
}