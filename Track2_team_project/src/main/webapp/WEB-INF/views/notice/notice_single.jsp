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
								href="../">Homepage</a></span>
							<span class="separator">&gt;</span> <span class="0-item">
								<a
								href="./notice">Notice
							</a>
							</span> <span class="separator">&gt;</span> <span class="1-item">
								<c:choose>
										<c:when test="${list.header eq 1 }">공지</c:when>
										<c:when test="${list.header eq 2 }">점검</c:when>
										<c:when test="${list.header eq 3 }">이벤트</c:when>
										<c:otherwise>기타</c:otherwise>
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
								<div class="blog_comments_forms">
									<div id="respond" class="comment-respond">
										<h3 id="reply-title" class="comment-reply-title">
											Leave a Reply <small><a rel="nofollow"
												id="cancel-comment-reply-link"
												href="/wp/miraculous/darkversion/the-standard-chunk-of-lorem-ipsum/#respond"
												style="display: none;">Cancel reply</a></small>
										</h3>
										<form
											action="https://kamleshyadav.com/wp/miraculous/darkversion/wp-comments-post.php"
											method="post" id="commentform" class="comment-form"
											novalidate="">
											<p class="comment-notes">
												<span id="email-notes">Your email address will not be
													published.</span> Required fields are marked <span
													class="required">*</span>
											</p>
											<div class="col-lg-6 col-md-6">
												<div class="comment_input_wrapper">
													<input id="author" name="author" type="text" value=""
														size="30" placeholder="Your Name" class="cmnt_field">
												</div>
											</div>
											<div class="col-lg-6 col-md-6">
												<div class="comment_input_wrapper">
													<input id="email" name="email" type="text" value=""
														size="30" placeholder="Your Email" class="cmnt_field">
												</div>
											</div>
											<div class="col-lg-12 col-md-12">
												<div class="comment_input_wrapper">
													<textarea id="comment" name="comment" class="cmnt_field"
														placeholder="Your Comment" cols="45" rows="8"
														aria-required="true"></textarea>
												</div>
											</div>
											<p class="form-submit">
												<input name="submit" type="submit" id="comment-submit"
													class="submit ms_btn" value="Post Comment"> <input
													type="hidden" name="comment_post_ID" value="2244"
													id="comment_post_ID"> <input type="hidden"
													name="comment_parent" id="comment_parent" value="0">
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