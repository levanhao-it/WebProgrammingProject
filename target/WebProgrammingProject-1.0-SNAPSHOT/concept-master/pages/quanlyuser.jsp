<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Quản Lý Khách Hàng</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="../assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/libs/css/style.css">
    <link rel="stylesheet" href="../assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/datatables/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/datatables/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/datatables/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../assets/vendor/datatables/css/fixedHeader.bootstrap4.css">
</head>

<body>
<!-- ============================================================== -->
<!-- main wrapper -->
<!-- ============================================================== -->
<div class="dashboard-main-wrapper">
    <!-- ============================================================== -->
    <!-- navbar -->
    <!-- ============================================================== -->
    <div class="dashboard-header">
        <nav class="navbar navbar-expand-lg bg-white fixed-top">
            <a class="navbar-brand" href="../index.html">Admin</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto navbar-right-top">
                    <li class="nav-item">
                        <div id="custom-search" class="top-search-bar">
                            <input class="form-control" type="text" placeholder="Tìm Kiếm..">
                        </div>
                    </li>
                    <li class="nav-item dropdown notification">
                        <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i> <span
                                class="indicator"></span></a>
                        <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                            <li>
                                <div class="notification-title"> Thông Báo</div>
                                <div class="notification-list">
                                    <div class="list-group">
                                        <a href="#" class="list-group-item list-group-item-action active">
                                            <div class="notification-info">
                                                <div class="notification-list-user-img"><img
                                                        src="assets/images/avatar-2.jpg" alt=""
                                                        class="user-avatar-md rounded-circle"></div>
                                                <div class="notification-list-user-block"><span
                                                        class="notification-list-user-name">Jeremy Rakestraw</span>Chấp
                                                    nhận lời mời tham gia nhóm.
                                                    <div class="notification-date">2 phút trước</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item list-group-item-action">
                                            <div class="notification-info">
                                                <div class="notification-list-user-img"><img
                                                        src="assets/images/avatar-3.jpg" alt=""
                                                        class="user-avatar-md rounded-circle"></div>
                                                <div class="notification-list-user-block"><span
                                                        class="notification-list-user-name">John Abraham</span>đang theo
                                                    dõi bạn.
                                                    <div class="notification-date">2 ngày trước</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item list-group-item-action">
                                            <div class="notification-info">
                                                <div class="notification-list-user-img"><img
                                                        src="assets/images/avatar-4.jpg" alt=""
                                                        class="user-avatar-md rounded-circle"></div>
                                                <div class="notification-list-user-block"><span
                                                        class="notification-list-user-name">Monaan Pechi</span> đang xem
                                                    danh mục chính
                                                    <div class="notification-date">2 phút trước</div>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#" class="list-group-item list-group-item-action">
                                            <div class="notification-info">
                                                <div class="notification-list-user-img"><img
                                                        src="assets/images/avatar-5.jpg" alt=""
                                                        class="user-avatar-md rounded-circle"></div>
                                                <div class="notification-list-user-block"><span
                                                        class="notification-list-user-name">Jessica Caruso</span>Chấp
                                                    nhận lời mời tham gia nhóm.
                                                    <div class="notification-date">2 phút trước</div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="list-footer"><a href="#">Xem tất cả thông báo</a></div>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown connection">
                        <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false"> <i class="fas fa-fw fa-th"></i> </a>
                        <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                            <li class="connection-list">
                                <div class="row">
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                        <a href="#" class="connection-item"><img src="assets/images/github.png" alt="">
                                            <span>Github</span></a>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                        <a href="#" class="connection-item"><img src="assets/images/dribbble.png"
                                                                                 alt=""> <span>Dribbble</span></a>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                        <a href="#" class="connection-item"><img src="assets/images/dropbox.png" alt="">
                                            <span>Dropbox</span></a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                        <a href="#" class="connection-item"><img src="assets/images/bitbucket.png"
                                                                                 alt=""> <span>Bitbucket</span></a>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                        <a href="#" class="connection-item"><img src="assets/images/mail_chimp.png"
                                                                                 alt=""><span>Mail chimp</span></a>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                        <a href="#" class="connection-item"><img src="assets/images/slack.png" alt="">
                                            <span>Slack</span></a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="conntection-footer"><a href="#">Nhiều Hơn</a></div>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown nav-user">
                        <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false"><img src="assets/images/avatar-1.jpg" alt=""
                                                                           class="user-avatar-md rounded-circle"></a>
                        <div class="dropdown-menu dropdown-menu-right nav-user-dropdown"
                             aria-labelledby="navbarDropdownMenuLink2">
                            <div class="nav-user-info">
                                <h5 class="mb-0 text-white nav-user-name">John Abraham </h5>
                                <span class="status"></span><span class="ml-2">Available</span>
                            </div>
                            <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Tài Khoản</a>
                            <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Cài Đặt</a>
                            <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Đăng Xuất</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <!-- ============================================================== -->
    <!-- end navbar -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- left sidebar -->
    <!-- ============================================================== -->
    <div class="nav-left-sidebar sidebar-dark">
        <div class="menu-list">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="d-xl-none d-lg-none" href="#">Doanh Thu</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav flex-column">
                        <li class="nav-divider">
                            Menu
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link active" href="#" data-toggle="collapse" aria-expanded="false"
                               data-target="#submenu-1" aria-controls="submenu-1"><i
                                    class="fa fa-fw fa-user-circle"></i>Tổng Quan <span
                                    class="badge badge-success">6</span></a>
                            <div id="submenu-1" class="collapse submenu" style="">
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link" href="../index.html">Trang Chủ</a>
                                    </li>

                                    <li class="nav-item">
                                        <a class="nav-link" href="../dashboard-sales.html">Bán Hàng</a>
                                    </li>

                                </ul>
                            </div>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false"
                               data-target="#submenu-3" aria-controls="submenu-3"><i class="fas fa-fw fa-chart-pie"></i>Đồ
                                thị</a>
                            <div id="submenu-3" class="collapse submenu" style="">
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link" href="../pages/chart-c3.html">Biểu đồ C3</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../pages/chart-chartist.html">Biểu đồ Chartist</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../pages/chart-charts.html">Đồ thị</a>
                                    </li>
                                    <!-- <li class="nav-item">
                                        <a class="nav-link" href="pages/chart-morris.html">Morris</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="pages/chart-sparkline.html">Sparkline</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="pages/chart-gauge.html">Guage</a>
                                    </li> -->
                                </ul>
                            </div>
                        </li>

                        <li class="nav-divider">
                            Đặc trưng
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false"
                               data-target="#submenu-6" aria-controls="submenu-6"><i class="fas fa-fw fa-file"></i> Quản
                                Lý </a>
                            <div id="submenu-6" class="collapse submenu" style="">
                                <ul class="nav flex-column">
                                    <!-- <li class="nav-item">
                                        <a class="nav-link" href="pages/blank-page.html">Blank Page</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="pages/blank-page-header.html">Blank Page Header</a>
                                    </li> -->
                                    <li class="nav-item">
                                        <a class="nav-link" href="../pages/quanlyuser.html">Quản Lý Khách Hàng</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../pages/quanlyadmin.html">Quản Lý Admin</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../pages/quanlydonhang.html">Quản lý Đơn hàng</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../pages/quanlysanpham.html">Quản Lý Sản Phẩm</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false"
                               data-target="#submenu-7" aria-controls="submenu-7"><i class="fas fa-fw fa-inbox"></i>Apps
                                <span class="badge badge-secondary">New</span></a>
                            <div id="submenu-7" class="collapse submenu" style="">
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link" href="../pages/inbox.html">Hộp thư đến</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../pages/email-details.html">Chi tiết Email</a>
                                    </li>
                                    <!-- <li class="nav-item">
                                        <a class="nav-link" href="pages/email-compose.html">Soạn Email</a>
                                    </li> -->
                                    <li class="nav-item">
                                        <a class="nav-link" href="../pages/message-chat.html">Tin nhắn trò chuyện</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <div class="dashboard-wrapper">
        <div class="container-fluid  dashboard-content">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="page-header">
                        <h2 class="pageheader-title">Quản Lý Khách Hàng</h2>
                        <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit
                            amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                        <div class="page-breadcrumb">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Trang Chủ</a></li>
                                    <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Quản Lý</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Quản Lý Khách Hàng</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">

                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="card">
                        <h5 class="card-header">Quản Lý Khách Hàng</h5>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered first">
                                    <thead>
                                    <tr>
                                        <th>Mã KH</th>
                                        <th>Tên Đăng Nhập</th>
                                        <th>Mật Khẩu</th>
                                        <th>Họ Tên</th>
                                        <th>Địa Chỉ</th>
                                        <th>Số Điện Thoại</th>
                                        <th>Email</th>
                                        <th>Ngày Đăng Ký</th>
                                        <th>Xóa</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="data" var="i">
                                    <tr>
                                        <td>${i.idUser}</td>
                                        <td>${i.userName}</td>
                                        <td>${i.password}</td>
                                        <td>${i.name}</td>
                                        <td>${i.address}</td>
                                        <td>${i.phone}</td>
                                        <td>${i.email}</td>
                                        <td>${i.regisDate}</td>
                                        <td><a href=""><i class="fas fa-trash-alt"></i></a></td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>

                                </table>
                                <br>
                                <button type="button" class="btn btn-infor" style="float: right; margin: 0.5%;">Chỉnh
                                    Sửa
                                </button>

                                <button type="button" class="btn btn-primary" style="float: right;margin: 0.5%">Thêm
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end basic table  -->
                <!-- ============================================================== -->
            </div>


        </div>
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->

        <!-- ============================================================== -->
        <!-- end footer -->
        <!-- ============================================================== -->
    </div>
</div>
<!-- ============================================================== -->
<!-- end main wrapper -->
<!-- ============================================================== -->
<!-- Optional JavaScript -->
<script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
<script src="../assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
<script src="../assets/vendor/slimscroll/jquery.slimscroll.js"></script>
<script src="../assets/vendor/multi-select/js/jquery.multi-select.js"></script>
<script src="../assets/libs/js/main-js.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="../assets/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
<script src="../assets/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
<script src="../assets/vendor/datatables/js/data-table.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
<script src="https://cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
<script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
<script src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>

</body>

</html>