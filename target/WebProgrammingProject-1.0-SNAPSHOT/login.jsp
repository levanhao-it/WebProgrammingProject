<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/29/2020
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
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
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
       integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
   <link href="https://fonts.googleapis.com/css?family=Comfortaa|Lobster&display=swap" rel="stylesheet">
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

<div class="d-flex justify-content-center align-items-center w-100 h-100" style="background-image: url(img/bg.png);     background-size: 100%;
    background-repeat: no-repeat;">
    <div class="card beauty_login">
        <div class="card-header">
            <!-- <div class="logo"><img src="img/logo.png" alt=""></div> -->
            <div class="login_text d-flex flex-row justify-content-center align-items-center">
                <span></span>
                <span class="text px-1">ĐĂNG NHẬP</span>
                <span></span>
            </div>
            <div class="login_with_text">
                Đăng nhập bằng tên người dùng và mật khẩu của bạn hoặc sử dụng phương tiện truyền thông xã hội của bạn
            </div>
        </div>
        <div class="card-body">
            <div class="social_login_container flex-column align-items-end">
                <div class="fb">
                    <i class="fa fa-facebook-f"></i>
                    <span>Facebook</span>
                </div>
                <div class="google">
                    <i class="fa fa-google"></i>
                    <span>Google</span>
                </div>
                <div class="twitter">
                    <i class="fa fa-twitter"></i>
                    <span>Twitter</span>
                </div>
                <div class="linkedin">
                    <i class="fa fa-linkedin"></i>
                    <span>LinkedIn</span>
                </div>
            </div>
            <div class="login_container d-flex flex-column">
                <form action="LoginControl" method="post">
                    <p class="text-danger">${mess}</p>
                    <label for="username">Tên đăng nhập</label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                        </div>
                        <input type="text" id="username" name="usern" class="form-control"
                               placeholder="Tên đăng nhập">
                    </div>
                    <label for="password">Mật khẩu</label>
                    <div class="input-group mb-2">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-key"></i></span>
                        </div>
                        <input type="password" id="password" name="passw" class="form-control"
                               placeholder="Mật khẩu">
                    </div>
                    <div style="display: flex; justify-content: space-between;">
                        <div class="form-group custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                            <label class="custom-control-label" for="customControlAutosizing">Nhớ mật khẩu</label>
                        </div>
                        <div class="pass"><a href="forgot.html">Quên mật khẩu</a></div>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary w-100 login_btn" type="submit">Đăng nhập</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="card-footer d-flex flex-column">
            <div class="social_login_container py-2">
                <div class="fb">
                    <i class="fa fa-facebook-f"></i>
                </div>
                <div class="google">
                    <i class="fa fa-google"></i>
                </div>
                <div class="twitter">
                    <i class="fa fa-twitter"></i>
                </div>
                <div class="linkedin">
                    <i class="fa fa-linkedin"></i>
                </div>
            </div>
            <div class="d-flex justify-content-center align-items-center p-3">
                Bạn chưa có tài khoản? <a href="register.html" class="ml-2">Bấm vào đây</a>
            </div>
        </div>
    </div>
</div>

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
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>


</body>
</html>
