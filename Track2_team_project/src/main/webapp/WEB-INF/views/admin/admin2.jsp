<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<div class="container">
		<h1>관리자님 환영합ㄴ디</h1>
		<p>principal : <sec:authentication property="principal"/></p>
		<p>MemberVO : <sec:authentication property="principal.member"/></p>
		<p>사용자 이름 : <sec:authentication property="principal.member.id"/></p>
		<p>사용자 id : <sec:authentication property="principal.member.pw"/></p>
		<p>사용자 권한 : <sec:authentication property="principal.member.authList"/></p> 
	</div>
</div>




<%@include file="../footer.jsp" %>