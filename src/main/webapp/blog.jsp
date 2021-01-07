<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Triple H | Food </title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src="img/logo.png" alt="" style=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li><a href="whishlist.html"><i class="fa fa-heart"></i> <span>1</span></a></li>
            <li><a href="shoping-cart.html"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <!-- <div class="header__cart__price">item: <span>$150.00</span></div> -->
    </div>
    <div class="humberger__menu__widget">
        <!-- <div class="header__top__right__language">
            <img src="img/language.png" alt="">
            <div>English</div>
            <span class="arrow_carrot-down"></span>
            <ul>
                <li><a href="#">Spanis</a></li>
                <li><a href="#">English</a></li>
            </ul>
        </div> -->
        <div class="header__top__right__auth">
            <a href="#"><i class="fa fa-user"></i> Đăng Nhập</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="./index.html">Trang Chủ</a></li>
            <li><a href="./shop-grid.html">Cửa Hàng</a></li>
            <ul class="header__menu__dropdown">
                <li><a href="./khaivi.html">Khai vị</a></li>
                <li><a href="./monchinh.html">Món chính</a></li>
                <li><a href="./trangmieng.html">Tráng miệng</a></li>
                <li><a href="./thucuong.html">Đồ uống</a></li>
            </ul>
            <li>
                <a href="./about-us.html">Về Chúng Tôi</a>
            </li>
            <li><a href="./blog.html">Blog</a></li>
            <li><a href="./contact.html">Liên Hệ</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="https://www.facebook.com/Group12-100996871826770"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-instagram"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> group12@gmail.com</li>
            <!-- <li>Free Shipping for all Order of $99</li> -->
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<%@ include file="header.jsp" %>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<section class="hero  hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Danh Mục Sản Phẩm</span>
                    </div>
                    <ul>
                        <li><a href="./khaivi.html">Khai vị</a></li>
                        <li><a href="./monchinh.html">Món chính</a></li>
                        <li><a href="./trangmieng.html">Tráng miệng</a></li>
                        <li><a href="./thucuong.html">Đồ uống</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <!-- <div class="hero__search__categories">
                                All Categories
                                <span class="arrow_carrot-down"></span>
                            </div> -->
                            <input type="text" placeholder="Bạn muốn ăn gì?">
                            <button type="submit" class="site-btn">Tìm Kiếm</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+84 3131 133</h5>
                            <span>Hỗ Trợ 24/7 </span>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Blog</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Trang Chủ</a>
                        <span>Blog</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Blog Section Begin -->
<section class="blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-5">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__search">
                        <form action="#">
                            <input type="text" placeholder="Search...">
                            <button type="submit"><span class="icon_search"></span></button>
                        </form>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Thể Loại</h4>
                        <ul>
                            <li><a href="#">Tất Cả</a></li>
                            <li><a href="#">Vẻ Đẹp (20)</a></li>
                            <li><a href="#">Thức Ăn (5)</a></li>
                            <li><a href="#">Phong Cách Sống (9)</a></li>
                            <li><a href="#">Du Lịch (10)</a></li>
                        </ul>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Tin Tức Gần Đây</h4>
                        <div class="blog__sidebar__recent">
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img/blog/sidebar/sr-1.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>09 Loại Thức Ăn<br/> Giảm Cân Mùa Hè</h6>
                                    <span>Tháng 6, 2020</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img/blog/sidebar/sr-2.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Cách Sống Khỏe<br/> Trong Thời Đại 4.0</h6>
                                    <span>Tháng 7, 2019</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img/blog/sidebar/sr-3.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>4 Phương Pháp Giúp Bạn <br/>Tăng Cân Với Chế Độ Ăn </h6>
                                    <span>Tháng 3, 2019</span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Tìm Kiếm Bằng</h4>
                        <div class="blog__sidebar__item__tags">
                            <a href="#">Thức Ăn</a>
                            <a href="#">Vẻ Đẹp</a>
                            <a href="#">Đồ Uống</a>
                            <a href="#">Trái Cây</a>
                            <a href="#">Rượu</a>
                            <a href="#">Phong Cách Sống</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-7">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img/blog/details/details-pic.jpg" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> Tháng 6, 2020</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="blog-details.html">Tác dụng của dâu tây</a></h5>
                                <p>Axit ellagic có trong dâu tây giúp làm chậm quá trình tiêu hóa thực phẩm tinh bột.
                                    Điều này có thể kiểm soát sự gia tăng hàm lượng đường huyết... </p>
                                <a href="blog-details.html" class="blog__btn">ĐỌC THÊM<span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img/blog/blog-3.jpg" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> Tháng 7, 2019</li>
                                    <li><i class="fa fa-comment-o"></i> 6</li>
                                </ul>
                                <h5><a href="#">Cách sống khỏe thời đại 4.0</a></h5>
                                <p>Có những thói quen tưởng chừng như đơn giản nhưng lại tác động tích cực đến sức khỏe
                                    của bạn...</p>
                                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img/blog/blog-1.jpg" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> Tháng 3, 2019</li>
                                    <li><i class="fa fa-comment-o"></i> 7</li>
                                </ul>
                                <h5><a href="#">4 Phương Pháp Giúp Bạn Tăng Cân Với Chế Độ Ăn</a></h5>
                                <p>Để có cách tăng cân phù hợp và có hiệu quả thì bạn phải tìm ra nguyên nhân khiến bạn
                                    không thể tăng cân được mặc dù đã làm rất nhiều phương pháp. Một số nguyên nhân
                                    chính có thể kể đến... </p>
                                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img/blog/blog-4.jpg" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> Tháng 4,2020</li>
                                    <li><i class="fa fa-comment-o"></i> 2</li>
                                </ul>
                                <h5><a href="#">Cách Nấu Một Bữa Ăn Đơn Giản</a></h5>
                                <p>Từ trước tới nay bữa cơm gia đình luôn được xem trọng, nó là điều kiện cần và đủ để
                                    một gia đình có thể quây quần bên nhau sau một ngày làm việc vất vã... </p>
                                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img/blog/blog-4.jpg" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i>Tháng 4,2019</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="#">Cách Để Tạo Điểm Nhấn Cho Món Ăn</a></h5>
                                <p>Khi đi ăn, thực khách mong muốn xem menu nhanh hơn thay vì đọc thông tin từ trước ra
                                    sau ... </p>
                                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img/blog/blog-6.jpg" alt="">
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> Tháng 11,2019</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="#">Cách Nấu Món Ăn Nung Nấu Hạnh Phúc</a></h5>
                                <p>Chỉ riêng suy nghĩ về việc phải lên kế hoạch, chuẩn bị nguyên liệu và dọn dẹp sau khi
                                    nấu đã quá đủ để khiến nhiều người bỏ đi ý tưởng tự nấu ăn...</p>
                                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="product__pagination blog__pagination">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->

<!-- Footer Section Begin -->
<%@ include file="footer.jsp" %>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>


</body>

</html>