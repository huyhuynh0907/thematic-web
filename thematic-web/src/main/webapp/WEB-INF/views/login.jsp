<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Đăng nhập</title>


</head>
<body>
	
	<!--  -->
	<div class="container">
		<!-- <h1 class="form-heading">login Form</h1> -->
		
		<div class="login-form">
			<div class="main-div">
			
					<!--alert  -->
					<c:if test="${param.incorrectAccount != null }">
						<div class="alert alert-danger">
				  			Username or password incorrect! 
						</div>
					</c:if>
					<c:if test="${param.accessDenied != null }">
						<div class="alert alert-danger">
				  			You not Authorize! 
						</div>
					</c:if>
		
				<div class="panel">
					<h2>Đăng nhập</h2>
					<p>Đăng nhập với tài khoản và mật khẩu của bạn</p>
				</div>
				
				
				<form action="j_spring_security_check" id="formLogin" method="post">
					<div class="form-group">
						<input type="text" class="form-control" id="userName" name="j_username"
							placeholder="Tài khoản">
					</div>

					<div class="form-group">
						<input type="password" class="form-control" id="password" name="j_password"
							placeholder="Mật khẩu">
					</div>
					<div class="forgot">
						<a href="reset.html">Forgot password?</a>
					</div>
					<input type="hidden" value="login" id="action" name="action" /> 
					<button type="submit" class="btn btn-primary">Đăng nhập</button>

				</form>
			</div>
			<p class="botto-text">Designed by Sunil Rajput</p>
		</div>
	</div>



</body>
</html>