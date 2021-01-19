<!--
=========================================================
* Paper Dashboard 2 - v2.0.1
=========================================================

* Product Page: https://www.creative-tim.com/product/paper-dashboard-2
* Copyright 2020 Creative Tim (https://www.creative-tim.com)

Coded by www.creative-tim.com

 =========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

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
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <!-- CSS Files -->


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
            <li><a href="whishlist.jsp"><i class="fa fa-heart"></i> <span>1</span></a></li>
            <li><a href="cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
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
            <a href="#" style="text-decoration: none;"><i class="fa fa-user"></i> Đăng Nhập</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="./index.jsp" style="text-decoration: none;">Trang Chủ</a></li>
            <li><a href="#" style="text-decoration: none;">Cửa Hàng</a>
                <ul class="header__menu__dropdown">
                    <li><a href="SearchCategory?idCategory=DM1&index=1" style="text-decoration: none;">Khai vị</a></li>
                    <li><a href="SearchCategory?idCategory=DM2&index=1" style="text-decoration: none;">Món chính</a></li>
                    <li><a href="SearchCategory?idCategory=DM3&index=1" style="text-decoration: none;">Tráng miệng</a></li>
                    <li><a href="SearchCategory?idCategory=DM4&index=1" style="text-decoration: none;">Đồ uống</a></li>
                </ul>
            </li>
            <li>
                <a href="./about-us.jsp" style="text-decoration: none;">Về Chúng Tôi</a>
            </li>
            <li><a href="./blog.jsp" style="text-decoration: none;">Blog</a></li>
            <li><a href="./contact.html" style="text-decoration: none;">Liên Hệ</a></li>
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
<div class="modal-dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="EditMyUser" method="post">
                <c:forEach items="${detail}" var="d">

                    <div class="modal-header">
                        <h4 class="modal-title">Chi Tiết Người Dùng</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group" hidden>
                            <label>ID</label>
                            <input type="text" value="${d.idUser}" name="idUser" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Tên Đăng Nhập</label>
                            <input type="text" value="${d.userName}" name="tendangnhap" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Mật Khẩu</label>
                            <input type="password" value="${d.password}" name="matkhau" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Họ Tên</label>
                            <input type="text" value="${d.name}" name="hoten" class="form-control" required>

                        </div>
                        <div class="form-group">
                            <label>Địa Chỉ</label>
                            <input type="text" value="${d.address}" name="diachi" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Số Điện Thoại</label>
                            <input type="text" value="${d.phone}" name="sodt" class="form-control" required>

                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" value="${d.email}" name="email" class="form-control" required>

                        </div>
                        <div class="form-group" hidden>
                            <label>Ngày Đăng Kí</label>
                            <input type="text" value="${d.regisDate}" name="dateregister" class="form-control" placeholder="yyyy-mm-dd" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                        <input type="submit" class="btn btn-success" value="Lưu">
                    </div>
                </c:forEach>
            </form>
        </div>
    </div>

</div>


<!-- Footer Section Begin -->
<%@ include file="footer.jsp" %>
<!-- Footer Section End -->

<!--   Core JS Files   -->


<script src="./assets/demo/demo.js"></script>
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