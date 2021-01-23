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

<!-- Blog Details Hero Begin -->
<section class="blog-details-hero set-bg" data-setbg="img/blog/details/details-hero.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="blog__details__hero__text">
                    <h2>Our Blog</h2>
                    <ul>
                        <li>Group 12</li>
                        <li>November 16, 2020</li>
                        <li>8 Bình Luận</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Details Hero End -->

<!-- Blog Details Section Begin -->
<section class="blog-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-5 order-md-1 order-2">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__search">
                        <form action="#">
                            <input type="text" placeholder="Tìm Kiếm...">
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
                                    <h6>9 loại thực phẩm<br/> bảo vệ gan.</h6>
                                    <span> Tháng 10,2020</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img/blog/sidebar/sr-2.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Mẹo giúp bạn cân bằng dinh dưỡng trong bữa ăn.</h6>
                                    <span>Tháng 09,2020</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img/blog/sidebar/sr-3.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>4 nguyên tắc giúp bạn <br/>giảm cân với rau.</h6>
                                    <span>Tháng 08,2020</span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Tìm Kiếm</h4>
                        <div class="blog__sidebar__item__tags">
                            <a href="#">Táo</a>
                            <a href="#">Vẻ đẹp</a>
                            <a href="#">Rau </a>
                            <a href="#">Trái cây</a>
                            <a href="#">Thực phẩm khỏe mạnh</a>
                            <a href="#">Phong cách sống</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-7 order-md-1 order-1">
                <div class="blog__details__text">

                    <img src="img/blog/details/details-pic.jpg" alt="">
                    <p>
                    <p>
                    <h2>Công dụng tuyệt vời của dâu tây</h2></p>
                    <p>Điều chỉnh đường huyết</p>
                    Axit ellagic có trong dâu tây giúp làm chậm quá trình tiêu hóa thực phẩm tinh bột. Điều này có thể
                    kiểm soát sự gia tăng hàm lượng đường huyết. Người bệnh tiểu đường ăn loại quả có chỉ số đường huyết
                    thấp này có thể ngăn ngừa đường huyết tăng vọt.
                    <p>Chống ung thư</p>
                    Dâu tây là nguồn cung cấp vitamin C và chất xơ tốt có thể bảo vệ cơ thể khỏi ung thư đại tràng và
                    thực quản. Tác dụng này được tăng cường nhờ sự hiện diện của axit ellagic trong dâu tây. Axit
                    ellagic là loại hóa chất thực vật có thể ngăn ngừa ung thư vú, phổi, bàng quang và da. Đóng vai trò
                    như một chất chống oxy hóa, axit ellagic có thể làm chậm quá trình sản sinh tế bào ung thư.
                    <p>Tăng cường miễn dịch</p>
                    Vitamin C trong dâu tây tạo ra các kháng thể tăng cường miễn dịch. Điều này giúp tăng khả năng chống
                    nhiễm trùng của cơ thể. Dâu tây có thể chống lại dị ứng và hen suyễn một cách hiệu quả.
                    <p>Điều chỉnh huyết áp</p>
                    Anthocyanin trong dâu tây có thể giúp thư giãn và thông tắc niêm mạc mạch máu, nhờ vậy giảm huyết áp
                    thành công. Giàu kali nên dâu tây có thể kiểm soát huyết áp.
                    <p>Cải thiện sức khỏe não</p>
                    Hàm lượng cao chất chống oxy hóa trong dâu tây bảo vệ các tế bào não khỏi bị tổn thương bởi các gốc
                    tự do. Giao tiếp thần kinh trong não cũng thay đổi, cải thiện hơn nữa sức khỏe não bộ.
                    <p>Chống viêm</p>
                    Dâu tây chứa quercetin có thể giúp giảm sự hình thành mảng xơ vữa. Tình trạng viêm được ngăn ngừa do
                    sự có mặt của vitamin C trong dâu tây.
                    <p>Giảm cholesterol</p>
                    Dâu tây chứa pectin. Đây là một loại chất xơ hòa tan có thể làm giảm cholesterol xấu trong cơ thể.
                    <p>Cải thiện thị lực</p>
                    Các chất chống oxy hóa trong dâu tây giúp ngăn ngừa thoái hóa điểm vàng, đục thủy tinh thể và các
                    bệnh về mắt khác. Vitamin C trong dâu tây được cho là cải thiện chức năng và tăng tuổi thọ của các
                    tế bào võng mạc.
                    <p>Trị táo bón</p>
                    Nhờ giàu chất xơ nên dâu tây có tác dụng điều trị táo bón. Sự có mặt của chất xơ trong loại quả này
                    giúp giảm các vấn đề về tiêu hóa như trướng bụng, đầy hơi.
                    <p>Cải thiện sức khỏe răng</p>
                    Dâu tây chứa axit malic. Loại axit này hoạt động như một chất làm se và có thể ngăn chặn răng đổi
                    màu. Dâu tây có thể được sử dụng để làm trắng răng. Bạn có thể nghiền nát dâu tây như bột và trộn
                    với baking soda. Sử dụng bàn chải mềm để trải đều hỗn hợp này trên răng. Giữ nguyên trong vòng 5
                    phút và sau đó chải bằng kem đánh răng và rửa sạch răng.
                    <p>Cải thiện sức khỏe da</p>
                    Các tế bào da chết bị loại bỏ nhờ axit alpha – hydroxy có trong dâu tây. Loại axit này cũng làm sạch
                    da. Quả dâu tây có khả năng làm dịu da bị kích thích. Nó cũng giúp bảo vệ da khỏi tia UV. Hỗn hợp
                    dâu tây trộn với mật ong có thể sử dụng như mặt nạ làm đẹp da hàng ngày.
                    <p>Ngăn ngừa rụng tóc</p>
                    Vitamin C trong dâu tây giúp tăng cường hấp thu sắt và kích thích mọc tóc. Sự thiếu hụt chất dinh
                    dưỡng này có thể khiến tóc bị chẻ ngọn. Vitamin C cũng giúp trị gàu. Sự có mặt của silica trong dâu
                    tây giúp ngăn ngừa chứng hói đầu.</p>
                </div>
                <div class="blog__details__content">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="blog__details__author">
                                <div class="blog__details__author__pic">
                                    <img src="img/blog/details/details-author.jpg" alt="">
                                </div>
                                <div class="blog__details__author__text">
                                    <h6>Michael Scofield</h6>
                                    <span>Admin</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="blog__details__widget">
                                <ul>
                                    <li><span>Danh mục:</span> Ẩm thực</li>
                                    <li><span>Tags:</span> All, Trending, Cooking, Healthy Food, Life Style</li>
                                </ul>
                                <div class="blog__details__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                    <a href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Details Section End -->

<!-- Related Blog Section Begin -->
<section class="related-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related-blog-title">
                    <h2>Có Thể Bạn Sẽ Thích</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="img/blog/blog-1.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i>Tháng 4,2020</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">4 Phương Pháp Giúp Bạn Tăng Cân Với Chế Độ Ăn</a></h5>
                        <p>Để có cách tăng cân phù hợp và có hiệu quả thì bạn phải tìm ra nguyên nhân khiến bạn không
                            thể tăng cân được mặc dù đã làm rất nhiều phương pháp. Một số nguyên nhân chính có thể kể
                            đến... </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="img/blog/blog-2.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i>Tháng 7,2020</li>
                            <li><i class="fa fa-comment-o"></i> 6</li>
                        </ul>
                        <h5><a href="#">9 Loại Thức Ăn Giảm Cân Mùa Hè</a></h5>
                        <p>Trái bơ Đây là 1 loại trái cây rất tốt chứa hàm lượng chất béo tốt và đáng bổ sung vào danh
                            sách các thực phẩm cần thiết cho bạn. ...</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="img/blog/blog-3.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i>Tháng 10,2020</li>
                            <li><i class="fa fa-comment-o"></i> 3</li>
                        </ul>
                        <h5><a href="#">Cách sống khỏe thời đại 4.0</a></h5>
                        <p>Có những thói quen tưởng chừng như đơn giản nhưng lại tác động tích cực đến sức khỏe của
                            bạn... </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Related Blog Section End -->

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