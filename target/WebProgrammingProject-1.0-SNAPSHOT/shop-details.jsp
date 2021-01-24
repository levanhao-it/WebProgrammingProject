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
                    <h2>Món Ăn</h2>
                    <div class="breadcrumb__option">
                        <a href="Home">Trang Chủ</a>
                        <a href="SearchCategory?idCategory=${product.idCategory}&index=1&valueFilter=0">${nameCategory}</a>
                        <span>${product.name}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__item">
                        <img class="product__details__pic__item--large" src="${product.img}" alt="" style="height: 400px;width: 450px">
                    </div>
                    <div class="product__details__pic__slider owl-carousel">
                        <img data-imgbigurl="img/product/details/product-details-1.jpg"
                             src="${product.img}" alt="" style="height: 78px;width: 98px">
                        <img data-imgbigurl="img/product/details/product-details-1.jpg"
                             src="${product.img}" alt="" style="height: 78px;width: 98px">
                        <img data-imgbigurl="img/product/details/product-details-1.jpg"
                             src="${product.img}" alt="" style="height: 78px;width: 98px">
                        <img data-imgbigurl="img/product/details/product-details-1.jpg"
                             src="${product.img}" alt="" style="height: 78px;width: 98px">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">
                    <h3>${product.name}</h3>
                    <div class="product__details__rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <span>(18 đánh giá)</span>
                    </div>
                    <div class="product__details__price"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${product.price}"/></div>
                    <p>${product.description}</p>
                    <div class="product__details__quantity">
                        <div class="quantity">
                            <div class="pro-qty">
                                <input type="text" value="1">
                            </div>
                        </div>
                    </div>
                    <a href="addCart?id=${product.id}" class="primary-btn">Thêm vào giỏ hàng</a>
                    <a href="addWhishlist?id=${product.id}" class="heart-icon"><span class="icon_heart_alt"></span></a>
                    <ul>
                        <li><b>Tình Trạng</b> <span>${product.status}</span></li>
                        <li><b>Giao hàng</b> <span>01 giờ giao hàng. <samp>Miễn phí trong ngày</samp></span></li>
<%--                        <li><b>Khối lượng</b> <span>0.1 kg</span></li>--%>
                        <li><b>Chia Sẻ</b>
                            <div class="share">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                               aria-selected="true">Mô Tả</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                               aria-selected="false">Thông Tin</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                               aria-selected="false">Đánh Giá <span>(1)</span></a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>Thông Tin Sản Phẩm</h6>
                                <p>${product.description}</p>
                            </div>
                        </div>

                        <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>Mô Tả Chi Tiết</h6>
                                <p>${product.descriptionDetail}</p>
                            </div>
                        </div>

                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>Các Đánh Giá</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Details Section End -->

<!-- Related Product Section Begin -->
<section class="related-product">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related__product__title">
                    <h2>Sản Phẩm Liên Quan</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <c:forEach items="${dataRelative}" var="o">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="${o.img}">
                        <ul class="product__item__pic__hover">
                            <li><a href="addWhishlist?id=${o.id}"><i class="fa fa-heart"></i></a></li>
                            <li><a href="ProductDetail?idProduct=${o.id}"><i class="fa fa-external-link"></i></a></li>
                            <li><a href="addCart?id=${o.id}"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="#">${o.name}</a></h6>
                        <h5><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${o.price}"/></h5>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- Related Product Section End -->

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