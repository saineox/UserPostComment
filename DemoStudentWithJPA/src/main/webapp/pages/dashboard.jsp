<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="ISO-8859-1">
			<title>Welcome User</title>

			<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
				rel="stylesheet" id="bootstrap-css">
			<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
			<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
			<!------ Include the above in your HEAD tag ---------->
		</head>

		<body>
			<h1 class="h2">Welcome to Blog system id: ${user.user_id} Name:
				${user.user_name}</h1>
			<div class="row">
				<div class="span4">
					<div class="sidebar-nav">
						<div class="well">
							<ul class="nav nav-list">
								<li class="nav-header">Main</li>
								<li class="active"><a href="dashboard"><i class="icon-home"></i>
										Dashboard</a></li>
								<li><a href="createpost"><i class="icon-edit"></i> Create
										Blog Post</a></li>
								
								<li><a href="postsorted"><i class="icon-user"></i>
										postsorted</a></li>
								<li><a href="postdesorted"><i class="icon-user"></i>
										postdesorted</a></li>

										<!-- <li><a href="createcomment"><i class="icon-comment"></i>
											Create Comment</a></li>
								<li><a href="commentsorted"><i class="icon-comment"></i>
										Comments</a></li>
								<li><a href="commentdesorted"><i class="icon-picture"></i>
										commentdesorted</a></li> -->


							</ul>
						</div>
					</div>
				</div>



				<div class="span8">
					<table>
						<c:forEach items="${postList}" var="post" varStatus="loop">
							<tr>
								<td>
									<h1>	<c:out value="${post.post_title}" /> </h1>
									<p><c:out value="${post.post_info}" /></p>
										<div>
											<span class="badge badge-success">Posted 2012-08-02 20:47:04</span>
										

										
											<div class="pull-right">
												<!-- <button type="button" class="btn btn-mini  btn-success"><a href="createcomment"><i class="icon-comment"></i>
												
												Create Comment</a></button> -->
												<button type="button" class="btn btn-mini  btn-inverse"><a href="createcomment/" <c:out value="${post.post_id}" />><i class="icon-comment"></i>
												Create Comment</a></button>
												 <!-- <span class="label">personal</span> -->
												</div>
										</div>
										<hr>
								</td>
							</tr>
						</c:forEach>
					</table>
				
					
				</div>

			</div>



		</body>

		</html>