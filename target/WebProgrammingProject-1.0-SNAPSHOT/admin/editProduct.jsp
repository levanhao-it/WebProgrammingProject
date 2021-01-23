<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body {
            color: #566787;
            background: #f5f5f5;
            font-family: 'Varela Round', sans-serif;
            font-size: 13px;
        }
        .table-responsive {
            margin: 30px 0;
        }
        .table-wrapper {
            min-width: 1000px;
            background: #fff;
            padding: 20px 25px;
            border-radius: 3px;
            box-shadow: 0 1px 1px rgba(0,0,0,.05);
        }
        .table-title {
            padding-bottom: 15px;
            background: #435d7d;
            color: #fff;
            padding: 16px 30px;
            margin: -20px -25px 10px;
            border-radius: 3px 3px 0 0;
        }
        .table-title h2 {
            margin: 5px 0 0;
            font-size: 24px;
        }
        .table-title .btn-group {
            float: right;
        }
        .table-title .btn {
            color: #fff;
            float: right;
            font-size: 13px;
            border: none;
            min-width: 50px;
            border-radius: 2px;
            border: none;
            outline: none !important;
            margin-left: 10px;
        }
        .table-title .btn i {
            float: left;
            font-size: 21px;
            margin-right: 5px;
        }
        .table-title .btn span {
            float: left;
            margin-top: 2px;
        }
        table.table tr th, table.table tr td {
            border-color: #e9e9e9;
            padding: 12px 15px;
            vertical-align: middle;
        }
        table.table tr th:first-child {
            width: 60px;
        }
        table.table tr th:last-child {
            width: 100px;
        }
        table.table-striped tbody tr:nth-of-type(odd) {
            background-color: #fcfcfc;
        }
        table.table-striped.table-hover tbody tr:hover {
            background: #f5f5f5;
        }
        table.table th i {
            font-size: 13px;
            margin: 0 5px;
            cursor: pointer;
        }
        table.table td:last-child i {
            opacity: 0.9;
            font-size: 22px;
            margin: 0 5px;
        }
        table.table td a {
            font-weight: bold;
            color: #566787;
            display: inline-block;
            text-decoration: none;
            outline: none !important;
        }
        table.table td a:hover {
            color: #2196F3;
        }
        table.table td a.edit {
            color: #FFC107;
        }
        table.table td a.delete {
            color: #F44336;
        }
        table.table td i {
            font-size: 19px;
        }
        table.table .avatar {
            border-radius: 50%;
            vertical-align: middle;
            margin-right: 10px;
        }
        .pagination {
            float: right;
            margin: 0 0 5px;
        }
        .pagination li a {
            border: none;
            font-size: 13px;
            min-width: 30px;
            min-height: 30px;
            color: #999;
            margin: 0 2px;
            line-height: 30px;
            border-radius: 2px !important;
            text-align: center;
            padding: 0 6px;
        }
        .pagination li a:hover {
            color: #666;
        }
        .pagination li.active a, .pagination li.active a.page-link {
            background: #03A9F4;
        }
        .pagination li.active a:hover {
            background: #0397d6;
        }
        .pagination li.disabled i {
            color: #ccc;
        }
        .pagination li i {
            font-size: 16px;
            padding-top: 6px
        }
        .hint-text {
            float: left;
            margin-top: 10px;
            font-size: 13px;
        }
        /* Custom checkbox */
        .custom-checkbox {
            position: relative;
        }
        .custom-checkbox input[type="checkbox"] {
            opacity: 0;
            position: absolute;
            margin: 5px 0 0 3px;
            z-index: 9;
        }
        .custom-checkbox label:before{
            width: 18px;
            height: 18px;
        }
        .custom-checkbox label:before {
            content: '';
            margin-right: 10px;
            display: inline-block;
            vertical-align: text-top;
            background: white;
            border: 1px solid #bbb;
            border-radius: 2px;
            box-sizing: border-box;
            z-index: 2;
        }
        .custom-checkbox input[type="checkbox"]:checked + label:after {
            content: '';
            position: absolute;
            left: 6px;
            top: 3px;
            width: 6px;
            height: 11px;
            border: solid #000;
            border-width: 0 3px 3px 0;
            transform: inherit;
            z-index: 3;
            transform: rotateZ(45deg);
        }
        .custom-checkbox input[type="checkbox"]:checked + label:before {
            border-color: #03A9F4;
            background: #03A9F4;
        }
        .custom-checkbox input[type="checkbox"]:checked + label:after {
            border-color: #fff;
        }
        .custom-checkbox input[type="checkbox"]:disabled + label:before {
            color: #b8b8b8;
            cursor: auto;
            box-shadow: none;
            background: #ddd;
        }
        /* Modal styles */
        .modal .modal-dialog {
            max-width: 400px;
        }
        .modal .modal-header, .modal .modal-body, .modal .modal-footer {
            padding: 20px 30px;
        }
        .modal .modal-content {
            border-radius: 3px;
        }
        .modal .modal-footer {
            background: #ecf0f1;
            border-radius: 0 0 3px 3px;
        }
        .modal .modal-title {
            display: inline-block;
        }
        .modal .form-control {
            border-radius: 2px;
            box-shadow: none;
            border-color: #dddddd;
        }
        .modal textarea.form-control {
            resize: vertical;
        }
        .modal .btn {
            border-radius: 2px;
            min-width: 100px;
        }
        .modal form label {
            font-weight: normal;
        }
    </style>
    <script>
        $(document).ready(function(){
            // Activate tooltip
            $('[data-toggle="tooltip"]').tooltip();

            // Select/Deselect checkboxes
            var checkbox = $('table tbody input[type="checkbox"]');
            $("#selectAll").click(function(){
                if(this.checked){
                    checkbox.each(function(){
                        this.checked = true;
                    });
                } else{
                    checkbox.each(function(){
                        this.checked = false;
                    });
                }
            });
            checkbox.click(function(){
                if(!this.checked){
                    $("#selectAll").prop("checked", false);
                }
            });
        });
    </script>
</head>
<body>
<%@ include file="headerAdmin.jsp" %>
<div class="container">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-xs-6">
                        <h2>Chi Tiết  <b> Sản Phẩm</b></h2>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Edit Modal HTML -->
<!-- Edit Modal HTML -->
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="editPro" method="post">
                <c:forEach items="${detail}" var="d">
                <div class="modal-header">
                    <h4 class="modal-title">Thêm Sản Phẩm</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group" hidden>
                        <label>ID</label>
                        <input type="text" value="${d.id}" name="id"  class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Tên</label>
                        <input type="text" name="name" value="${d.name}" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Ảnh </label>
                        <input type="text"name="image" value="${d.img}" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Giá</label>
                        <input type="text" name="price" value="${d.price}" class="form-control" required>

                    </div>
                    <div class="form-group">
                        <label>Giá Giảm</label>
                        <input type="text" name="priceSale" value="${d.priceSale}"class="form-control" required>

                    </div>
                    <div class="form-group">
                        <label>Sản Phẩm Mới</label>
                        <select name="isNew" class="form-select" aria-label="Mặc định" required>
                            <option value="1">Có</option>
                            <option value="0">Không</option>
                        </select>

                    </div>
                    <div class="form-group">
                        <label>Sản Phẩm Giảm Giá</label>
                        <select name="isSale" class="form-select" aria-label="Mặc định" required>
                            <option value="1">Có</option>
                            <option value="0">Không</option>
                        </select>

                    </div>
                    <div class="form-group">
                        <label>Mô Tả</label>
                        <input type="text" name="description" value="${d.description}" class="form-control" required></input>
                    </div>
                    <div class="form-group">
                        <label>Mô Tả Chi Tiết</label>
                        <input type="text" name="descriptionDetail" value="${d.descriptionDetail}" class="form-control" required>

                    </div>
                    <div class="form-group">
                        <label>Ngày Đăng</label>
                        <input type="date"name="datePost" value="${d.datePost}" class="form-control" placeholder="yyyy-mm/dd" required>

                    </div>
                    <div class="form-group">
                        <label>Mã Danh Mục</label>
                        <select name="idCategory" class="form-select" aria-label="Mặc định" required>
                            <option value="DM1">Khai Vị</option>
                            <option value="DM2">Món Chính</option>
                            <option value="DM3">Tráng Miệng</option>
                            <option value="DM4">Đồ Uống</option>
                        </select>

                    </div>
                    <div class="form-group">
                        <label>Tình Trạng</label>
                        <select name="status" class="form-select" aria-label="Mặc định" required>
                            <option value="Còn Hàng">Còn Hàng</option>
                            <option value="Hết Hàng">Hết Hàng</option>
                        </select>

                    </div>

                </div>
                <div class="modal-footer">
                    <a href="DataProducts"><input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy"></a>
                    <input type="submit" class="btn btn-success" value="Lưu Thay Đổi ">
                </div>
                </c:forEach>
            </form>
        </div>

</div>
<!-- Delete Modal HTML -->
<%@ include file="footerAdmin.jsp" %>

</body>
</html>