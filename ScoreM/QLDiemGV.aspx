﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLDiemGV.aspx.cs" Inherits="ScoreM.QLDiemGV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

    <!-- Latest compiled and minified JS -->
    <script src="//code.jquery.com/jquery.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/<script src="></script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link rel="shortcut icon" href="wwwroot/Picture/logoVinh.png">
    <link rel=" stylesheet " href="wwwroot/css/StyleDGV.css ">
    <style type="text/css">
        .auto-style1 {
            width: 389px
        }
    </style>

    <title>Password</title>
</head>
<body>
    <form id="form1" runat="server">
        <%--<div class="header">
            <nav class="navbar navbar-default navbar-static-top " role="navigation ">
                <a class="navbar-brand " href="# "><span class="openbtn " style="font-size: 30px; cursor: pointer" onclick="openNav() ">&#9776;</span></a>
               <%-- <img class='logo' src="wwwroot/picture/logoVinh.png " alt=" ">--%>
                  
                <ul class="nav navbar-nav ">
                    <%--<li class="active ">
                        <p href="# ">Vinh University</p>
                    </li>--%>
                    <li class="accname ">
                        <p href="# ">Lê Anh Tú</p>
                    </li>
                    <li>
                        <img class="avatar " src="wwwroot/Picture/avatar.png " alt=" ">
                    </li>
                    <li class="logout ">
                        <a onclick="myconfirm()" href="#">Logout</a>
                    </li>
                </ul>
            </nav>
        </div>--%>
        <script type="text/javascript">
            function myconfirm() {
                var result = confirm("Bạn có chắc chắn muốn đăng xuất?");
                if (result) {
                    window.location.href="Login.aspx";            
                }
                else {
                  
                }
            }
        </script>
        <!-- left menu -->
        <div>
            <div id="mySidenav" class="sidenav">
                
                <img class="imglogo" src="wwwroot/picture/LOGO_text.jpg" alt="" height="50" style="background-image: none;">
                <a href="# "><i class="fas fa-users fw"></i>Lớp học phần</a>
                <a href="# "><i class="fas fa-edit fw"></i>Quản lý điểm</a>
                <a href="ProfileGV.aspx"><i class="fas fa-address-card fw"></i>Hồ sơ cá nhân</a>
                <a href="PasswordGV.aspx"><i class="fas fa-key fw"></i>Quản lý mật khẩu</a>
            </div>

            <script>
                function openNav() {
                    document.getElementById("mySidenav").style.width = "250px";
                }

                function closeNav() {
                    document.getElementById("mySidenav").style.width = "0";
                }
            </script>
        </div>
        <!-- content -->
       
        <!-- footer -->

<%--        <footer>
            <div class="container-fluid footer ">
                <div class="row ">
                    <div class="col-md-9 ">
                        <h3>ABOUT US</h3>
                        <div class="row ">
                            <div class="col-md-2 "><i class="fas fa-map-marker "></i></div>
                            <div class="col-md-10 ">
                                <span><b>Address:</b></span>
                                <p>182 Lê Duẩn - Thành Phố Vinh - Tỉnh Nghệ An</p>
                            </div>
                        </div>

                        <div class="row ">
                            <div class="col-md-2 "><i class="fas fa-phone"></i></div>
                            <div class="col-md-10 ">
                                <span><b>Phone:</b></span>
                                <p>(0238)3855.452, (0238)8988.989 </p>
                            </div>
                        </div>

                        <div class="row ">
                            <div class="col-md-2 "><i class="fas fa-fax "></i></div>
                            <div class="col-md-10 ">
                                <span><b>Fax:</b></span>
                                <p>(0238)3855.269 </p>
                            </div>
                        </div>

                        <div class="row ">
                            <div class="col-md-2 "><i class="fas fa-envelope "></i></div>
                            <div class="col-md-10 ">
                                <span><b>Email:</b></span>
                                <p>vinhuni@vinhuni.edu.vn</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 connect ">
                        <h3>CONNECT WITH US</h3>
                        <i class="fab fa-facebook "></i>
                        <i class="fab fa-facebook-messenger "></i>
                        <i class="fab fa-google-plus "></i>
                        <i class="fab fa-twitter "></i>
                        <i class="fab fa-instagram "></i>

                    </div>
                </div>
            </div>
        </footer>--%>
    </form>
</body>
</html>