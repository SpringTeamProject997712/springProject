<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div class="breadcrumbs_wrapper ms_top_breadcrumb"
	style="background-image: url(//kamleshyadav.com/wp/miraculous/darkversion/wp-content/uploads/sites/4/2018/11/post2.jpg);">
	<div class="ms_banner">
		<div class="container">
			<div class="row">
				<div class="ms_banner_title">
					<h1>${view.title }</h1>
					<div class="ms_breadcrumb">
						<div class="breadcrumbs">
							<span class="first-item"> <a
								href="../">メインページ</a></span>
							<span class="separator">&gt;</span> <span class="0-item">
								<a
								href="./notice">お知らせ
							</a>
							</span> <span class="separator">&gt;</span> <span class="1-item">
								<c:choose>
										<c:when test="${view.header eq 1 }">お知らせ</c:when>
										<c:when test="${view.header eq 2 }">メンテナンス</c:when>
										<c:when test="${view.header eq 3 }">イベント</c:when>
										<c:otherwise>その他</c:otherwise>
								</c:choose>
							</span> <span class="separator">&gt;</span> <span class="last-item">${view.title }</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="primary" class="content-area">
	<main id="main" class="site-main">
		<div class="ms_main_wrapper ms_main_wrapper_single">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12">
						<div class="ms_main_data">
							<article id="post-2244"
								class="post-2244 post type-post status-publish format-standard has-post-thumbnail hentry category-melody-music category-rock category-rock-and-roll category-soulfull-tunes">
								<div class="ms_single_page_image">
									<span class="ms_blog_date">
									<fmt:setLocale value="en_US" scope="session" />
									<fmt:parseDate var="nodate" value="${view.indate }" pattern="yyyy-MM-dd" />
									<fmt:formatDate value="${nodate }" pattern="yyyy-MM-dd" /></span> <img
										src="../images/notice.jpg"
										alt="noticeimage">
								</div>
								<header class="entry-header">
									<div class="entry-meta">
										<span class="posted-on"><i class="fa fa-calendar"
											aria-hidden="true"></i> <time class="entry-date published"
													datetime="2018-11-02T06:14:04+00:00"><fmt:formatDate value="${nodate }" pattern="yyyy-MM-dd" /></time></span><span class="byline"><span class="ms-separator"></span>
											<i class="fa fa-user" aria-hidden="true"></i> <span
											class="author vcard"><a class="url fn n"
												href="https://kamleshyadav.com/wp/miraculous/darkversion/author/miraculous/">${view.id }</a></span></span>
									</div>
									<!-- .entry-meta -->
								</header>
								<!-- .entry-header -->
								<div class="entry-content">
									<p>${view.content }</p>

								</div>
								<!-- .entry-content -->
								<footer class="entry-footer "> </footer>
								<!-- .entry-footer -->
							</article>
							<!-- #post-2244 -->
							<div id="comments" class="comments-area">
								<!----Blog Comment Form---->
								<div class="blog_comments_forms" style="padding-top: 0px;">
								<c:forEach items="${reply}" var="comments">
									<div id="div-comment-114" class="comment-body ms_comment_section">
										<div class="comment-author vcard comment_img"><img src="/upload/${comments.image }" class="avatar avatar-80 photo" height="80" width="80" >
										</div>
										<div class="comment-meta commentmetadata comment_info">
						
											<div class="comment_head">
												<h3><cite class="fn">${comments.id}</cite> <span class="says">様のコメント</span></h3>
						
												<p><a href="">${comments.rdate }　</a></p>
											</div>
											<p>${comments.content }</p>
										</div>
									</div>
								</c:forEach>
									<div id="respond" class="comment-respond">
										<h3 id="reply-title" class="comment-reply-title">
											コメントを残してください <small><a rel="nofollow"
												id="cancel-comment-reply-link"
												href="/wp/miraculous/darkversion/the-standard-chunk-of-lorem-ipsum/#respond"
												style="display: none;">Cancel reply</a></small>
										</h3>
										<form
											action="/reply/writereply"
											method="post" id="commentform" class="comment-form"
											>
											<input id="csrfToken" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
											<p class="comment-notes">
											</p>
											<div class="col-lg-3 col-md-3">
												<div class="comment_input_wrapper">
													<input id="id" name="id" type="text" value="${principal.member.name} "
														size="30" placeholder="ID" class="cmnt_field" readonly>
												</div>
											</div>
											<div class="col-lg-12 col-md-12">
												<div class="comment_input_wrapper">
													<textarea id="comment" name="content" class="cmnt_field"
														placeholder="コメント" cols="45" rows="8"
														aria-required="true"></textarea>
												</div>
											</div>
											<p class="form-submit">
												<input name="submit" type="submit" " id="comment-submit"
													class="submit ms_btn" value="転送"> <input type="hidden"
													name="wbno" id="wbno" value="${view.wbno }">
											</p>
										</form>
									</div>
									<!-- #respond -->
								</div>
							</div>
							<!-- #comments -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</div>

<!--main div-->
</div>

<%@ include file="../footer.jsp"%>