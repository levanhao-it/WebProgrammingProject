<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <link rel="stylesheet" href="">
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
                        <li><a href="SearchCategory?idCategory=DM1&index=1&valueFilter=0">Khai vị</a></li>
                        <li><a href="SearchCategory?idCategory=DM2&index=1&valueFilter=0">Món chính</a></li>
                        <li><a href="SearchCategory?idCategory=DM3&index=1&valueFilter=0">Tráng miệng</a></li>
                        <li><a href="SearchCategory?idCategory=DM4&index=1&valueFilter=0">Đồ uống</a></li>
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
                    <h2>Món Ăn</h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Trang Chủ</a>
                        <span>Món ăn</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="sidebar">
                    <div class="sidebar__item">
                        <h4>Danh Mục Sản Phẩm</h4>
                        <ul>
                            <li><a href="SearchCategory?idCategory=DM1&index=1&valueFilter=0">Khai vị</a></li>
                            <li><a href="SearchCategory?idCategory=DM2&index=1&valueFilter=0">Món chính</a></li>
                            <li><a href="SearchCategory?idCategory=DM3&index=1&valueFilter=0">Tráng miệng</a></li>
                            <li><a href="SearchCategory?idCategory=DM4&index=1&valueFilter=0">Đồ uống</a></li>
                        </ul>
                    </div>
                    <div class="sidebar__item">
                        <h4>Giá</h4>
                        <div class="price-range-wrap">
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                 data-min="10" data-max="5000">
                                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                            </div>
                            <div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar__item">
                        <div class="latest-product__text">
                            <h4>Sản Phẩm Mới</h4>
                            <div class="latest-product__slider owl-carousel">
                                <c:forEach begin="1" end="3" var="k">
                                    <div class="latest-prdouct__slider__item">
                                        <c:forEach begin="${k*3-2}" end="${k*3}" items="${dataNew}" var="i">
                                            <a href="ProductDetail?idProduct=${i.id}" class="latest-product__item">
                                                <div class="latest-product__item__pic">
                                                    <img src="${i.img}" style="height: 110px;width: 110px" alt="">
                                                </div>
                                                <div class="latest-product__item__text">
                                                    <h6>${i.name}</h6>
                                                    <span>${i.price}</span>
                                                </div>
                                            </a>
                                        </c:forEach>

                                    </div>

                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="section-title product__discount__title">
                    <h2>${title}</h2>
                </div>
                <div class="filter__item">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="filter__sort">
                                <span>Sắp Xếp Theo</span>
                                    <select name="valueFilter" id="selectFilter" onchange="genderChanged()">
                                        <option value="0" >Mặc định</option>
                                        <option value="1" >Giá tăng</option>
                                        <option value="2" >Giá giảm</option>
                                        <option value="3" >Ngày Tăng</option>
                                        <option value="4" >Ngày Giảm</option>
                                    </select>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="filter__found">
                                <h6><span>${size}</span> Sản Phẩm Tìm Kiếm</h6>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-3">
                            <div class="filter__option">
                                <span class="icon_grid-2x2"></span>
                                <span class="icon_ul"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${data}" var="i">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="${i.img}">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="ProductDetail?idProduct=${i.id}"><i class="fa fa-external-link"></i></a></li>
                                    <li><a href="addCart?id=${i.id}"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">${i.name}</a></h6>
                                <h5>${i.price}</h5>
                            </div>
                        </div>
                    </div>
                    </c:forEach>

                </div>
                <div class="product__pagination">
                    <c:forEach begin="1"  end="${endPage}" var="i">
                        <a id="${i}" href="SearchCategory?index=${i}&idCategory=${idCategory}">${i}</a>
                    </c:forEach>
                    <a href="SearchCategory?index=${index +1}&idCategory=${idCategory}"><i class="fa fa-long-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->
<script>
    var x = document.getElementById('${index}')
    x.style.color = "white";
    x.style.backgroundColor = "#ff8928"
    document.getElementById('selectFilter').selectedIndex = "${valueFilter}";

    function genderChanged()
    {
        var x = document.getElementById('selectFilter');
        var value = x.value;

        if (value === '0'){
            location.assign("SearchCategory?idCategory=${idCategory}&index=1&valueFilter=0");
        }
        else if (value === '1'){
            location.assign("SearchCategory?idCategory=${idCategory}&index=1&valueFilter=1");
        }
        else if (value === '2'){
            location.assign("SearchCategory?idCategory=${idCategory}&index=1&valueFilter=2")
        }
        else if (value === '3'){
            location.assign("SearchCategory?idCategory=${idCategory}&index=1&valueFilter=3")
        }
        else if (value === '4'){
            location.assign("SearchCategory?idCategory=${idCategory}&index=1&valueFilter=4")
        }
    }

</script>

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