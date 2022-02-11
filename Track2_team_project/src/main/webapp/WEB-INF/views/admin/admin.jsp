<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="admin_header.jsp" %>

	<div class="container" style="color:white; height:800px;">
		<h1>관리자 <sec:authentication property="principal.member.name"/>님 환영합니-다</h1>
		<p>principal : <sec:authentication property="principal"/></p>
		<p>MemberVO : <sec:authentication property="principal.member"/></p>
		<p>사용자 이름 : <sec:authentication property="principal.member.id"/></p>
		<p>사용자 id : <sec:authentication property="principal.member.pw"/></p>
		<p>사용자 권한 : <sec:authentication property="principal.member.authList"/></p> 
	</div>
<%@ include file="admin_footer.jsp"%>