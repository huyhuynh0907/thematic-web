<%@ page import="edu.hcmuaf.util.SecurityUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">BÓNG ĐÁ 24/7</a>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4 "></ul>
                    <form class="d-flex ">
                        <button class="btn btn-outline-light" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                       <ul class="navbar-nav  mb-2 mb-lg-0 ms-lg-4 ">
                         <li class="nav-item"><a class="nav-link active" aria-current="page" href="<c:url value='/trang-chu'/>">Trang chủ</a></li>
                        
                        <security:authorize access="isAnonymous()" >
							<li class="nav-item"><a class="nav-link" href="<c:url value='/dang-nhap'/>">Đăng nhập</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>
						</security:authorize>
                        
                        <security:authorize access="isAuthenticated()" >
	                        <li class="nav-item "><p class="nav-link mb-0" >Welcome, </p></li>
	                        <li class="nav-item dropdown">
	                             <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><%=SecurityUtils.getPrincipal().getFullName()%></a>
	                             <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	                                 <li><a class="dropdown-item" href="#!">Thông tin</a></li>
	                                 <li><hr class="dropdown-divider" /></li>
	                                 <li><a class="dropdown-item" href="#!">Đổi mật khẩu</a></li>
	                                 <li><a class="dropdown-item" href="<c:url value='/thoat'/>">Thoát</a></li>
	                               </ul>
	                        </li>
                        </security:authorize>
                     </ul>
                </div>
            </div>
        </nav>