<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Trang chủ</title>

</head>

<body>
	<!--BODY CONTENT  -->
	
	<nav class=" navbar navbar-expand-lg navbar-dark bg-secondary sticky-top border-bottom-2 border-2 border-secondary">
            <div class="container collapse navbar-collapse px-4 px-lg-5 " id="navb">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active ps-0" aria-current="page" href="#!">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#!">Nhận định</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#!">Dự đoán</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#!">Tỉ số</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#!">Mới</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#!">Lịch phát sóng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#!">Highlight</a>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Thông tin</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">Tất cả</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Cầu thủ</a></li>
                                <li><a class="dropdown-item" href="#!">Câu lạc bộ</a></li>
                                <li><a class="dropdown-item" href="#!">Giải đấu</a></li>
                            </ul>
                        </li>
                    </ul>

                     <form class="form-inline my-2 my-lg-0 d-flex">
                        <input class="form-control  search" type="text" placeholder="Search..." id="search">
                        <!-- <button class="btn btn-success my-2 my-sm-0" type="button">Search</button> -->
                    </form>
            </div>
        </nav>


        <nav aria-label="breadcrumb " class="breadcrumb py-0 ">
                <ol class="breadcrumb mb-0 container px-2 px-lg-5 ">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Products</li>
                </ol>
        </nav>

        <!-- /HEADER -->

        <!-- BODY -->
        <!-- Carousel -->
            <div class="container px-4 px-lg-5 my-3">
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                  <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  </div>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img src="https://placebeard.it/640x200" class="d-block w-100" alt="...">
                      <div class="carousel-caption d-none d-md-block">
                        <h5>First slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="https://loremflickr.com/640/200" class="d-block w-100" alt="...">
                      <div class="carousel-caption d-none d-md-block">
                        <h5>Second slide label</h5>
                        <p>Some representative placeholder content for the second slide.</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="https://www.placecage.com/640/200" class="d-block w-100" alt="...">
                      <div class="carousel-caption d-none d-md-block">
                        <h5>Third slide label</h5>
                        <p>Some representative placeholder content for the third slide.</p>
                      </div>
                    </div>
                  </div>
                  <button class="carousel-control-prev opacity-10" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </button>
                  <button class="carousel-control-next opacity-10" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                  </button>
                </div>
            </div>
        <!-- Section-->
        <section class="">
            <div class="container px-2 px-lg-5 mt-4">
                <!-- Card item -->
                <div class="card h-100 mb-2">
                    <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col col-4 ">
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                    </div>
                    <div class="col col-8 ">
                        <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Fancy Product</h5>
                                    <!-- Product price-->
                                    $40.00 - $80.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card h-100 mb-2">
                    <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col col-4 ">
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                    </div>
                    <div class="col col-8 ">
                        <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Fancy Product</h5>
                                    <!-- Product price-->
                                    $40.00 - $80.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card h-100 mb-2">
                    <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col col-4 ">
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                    </div>
                    <div class="col col-8 ">
                        <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Fancy Product</h5>
                                    <!-- Product price-->
                                    $40.00 - $80.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card h-100 mb-2">
                    <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col col-4 ">
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                    </div>
                    <div class="col col-8 ">
                        <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Fancy Product</h5>
                                    <!-- Product price-->
                                    $40.00 - $80.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</body>