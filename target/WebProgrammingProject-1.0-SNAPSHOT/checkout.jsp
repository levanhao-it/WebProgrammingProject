<%@ page import="vn.edu.nlu.model.Cart" %>
<%@ page import="vn.edu.nlu.beans.Product" %>
<%@ page import="java.util.Collection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Danh Mục Sản Phẩm</span>
                    </div>
                    <ul>
                        <li><a href="SearchCategory?idCategory=DM1&index=1&filter=0">Khai vị</a></li>
                        <li><a href="SearchCategory?idCategory=DM2&index=1&filter=0">Món chính</a></li>
                        <li><a href="SearchCategory?idCategory=DM3&index=1&filter=0">Tráng miệng</a></li>
                        <li><a href="SearchCategory?idCategory=DM4&index=1&filter=0">Đồ uống</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="SearchControl?index=1&value=1&valueFilter=0" method="post">
                            <input type="txtSearch"  name="txtSearch" placeholder="Bạn muốn ăn gì?">
                            <button type="submit" name="submit" class="site-btn">Tìm Kiếm</button>
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
                    <h2>Thanh Toán</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Trang chủ</a>
                        <span>Thanh Toán</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h6><span class="icon_tag_alt"></span> Bạn có mã giảm giá không? <a href="#">Nhấp vào đây</a> để nhập mã
                    của bạn.
                </h6>
            </div>
        </div>
        <div class="checkout__form">
            <h4>Chi Tiết Thanh Toán</h4>
            <form action="AddBill" method="post">
                <c:forEach items="${detail}" var="d">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <div class="row">
                            <div class="col-lg-6"hidden>
                                <div class="checkout__input">
                                    <p>Mã DH<span>*</span></p>
                                    <input type="text" name="madh" value="${d.name}">
                                </div>
                            </div>
                            <div class="col-lg-6"hidden>
                                <div class="checkout__input">
                                    <p>Họ Tên<span>*</span></p>
                                    <input type="text" name="makh" value="${d.idUser}">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Họ Tên<span>*</span></p>
                                    <input type="text" name="hoten" value="${d.name}">
                                </div>
                            </div>
                        </div>
                        <!--                            <div class="checkout__input">-->
                        <!--                                <p>Quốc Tịch<span>*</span></p>-->
                        <!--                                <input type="text">-->
                        <!--                            </div>-->
                        <div class="checkout__input">
                            <p>Địa chỉ<span>*</span></p>
                            <input type="text" value="${d.address}" name="diachi" placeholder="Tên Đường" class="checkout__input__add">
                            <!--                                <input type="text" placeholder="Apartment, suite, unite ect (optinal)">-->
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Điện Thoại<span>*</span></p>
                                    <input type="text" value="${d.phone}" name="sodt">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Email<span>*</span></p>
                                    <input type="text" value="${d.email}" name="email">
                                </div>
                            </div>
                        </div>

                        <div class="checkout__input">
                            <a href="register.jsp">Bạn Chưa Có Tài Khoản? Hãy Đăng Kí </a>
                        </div>
                        <div class="checkout__input">
                            <p>Ghi Chú Đặt Hàng<span>*</span></p>
                            <input type="text" name="ghichu"
                                   placeholder="Ghi chú về đơn đặt hàng của bạn, ví dụ: lưu ý đặc biệt khi giao hàng.">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">

                        <div class="checkout__order">
                            <h4>Đơn Hàng Của Bạn</h4>
                            <table>
                                <thead>
                                <tr>
                                    <th style="font-size: 18px;font-weight: 700;padding-right: 130px;padding-bottom: 15px">Sản Phẩm</th>
                                    <th style="font-size: 19px;font-weight: 700;padding-bottom: 15px">Tổng </th>
                                </tr>
                                </thead>
                                <tbody>
                                <% Cart c=Cart.getCart(session);
                                    Collection<Product> data=c.getData();
                                    request.setAttribute("data",data);%>
                                <c:forEach items="${data}" var="d">
                                <tr>
                                    <td style="padding-bottom: 15px">${d.name}</td>
                                    <td style="padding-bottom: 15px"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${d.price*d.quantity}"/></td>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <div class="checkout__order__total" >Tổng Tiền <span><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${data.stream().map(d -> d.price*d.quantity).sum()}"/> </span></div>
                            <div hidden><input type="text" name="trigia" value="${data.stream().map(d -> d.price*d.quantity).sum()}"></div>
                            <div class="checkout__input__checkbox">
                                <label for="acc-or">
                                    Tạo một tài khoản?
                                    <input type="checkbox" id="acc-or">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="checkout__input__checkbox">
                                <label for="payment">
                                    Kiểm Tra Thanh Toán
                                    <input type="checkbox" id="payment">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="checkout__input__checkbox">
                                <label for="paypal">
                                    Tiền Trả Lại
                                    <input type="checkbox" id="paypal">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <button type="submit" class="site-btn">Đặt Hàng</button>
                        </div>

                    </div>
                </div>
                </c:forEach>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

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