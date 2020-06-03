<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileGV.aspx.cs" Inherits="ScoreM.ProfileGV" %>

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
    <link rel=" stylesheet " href="wwwroot/css/StyleProfGv.css ">
    <style type="text/css">
        .auto-style1 {
            width: 389px
        }
    </style>

    <title>Profile</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <nav class="navbar navbar-default navbar-static-top " role="navigation ">
                <a class="navbar-brand " href="# "><span class="openbtn " style="font-size: 30px; cursor: pointer" onclick="openNav() ">&#9776;</span></a>
                <img class='logo' src="wwwroot/picture/logoVinh.png " alt=" ">

                <ul class="nav navbar-nav ">
                    <li class="active ">
                        <p href="# ">Vinh University</p>
                    </li>
                    <li class="accname ">
                        <p href="# ">Lê Anh Tú</p>
                    </li>
                    <li>
                        <img class="avatar " src="wwwroot/Picture/avatar.png " alt=" ">
                    </li>
                    <li class="logout" onclick="myconfirm()">
                        <a href="Login.aspx">Logout</a>
                    </li>
                </ul>
            </nav>
        </div>
        <script>
            function myconfirm() {
                var result = confirm("Bạn có chắc chắn muốn đăng xuất?");
                if (result) {
                    //Response.redirect('Login.aspx');
                    return true;
                }
                else {
                    return false;
                }
            }
        </script>
        <!-- left menu -->
        <div>
            <div id="mySidenav" class="sidenav">
                <a href="# " class="closebtn " onclick="closeNav() ">X</a>
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
        <div id="content">
            <div class="content">
                <h1>Profile</h1>
                <table style="width: 60%;">
                    <tr>
                        <td class="auto-style1">Mã giảng viên</td>
                        <td>
                            <asp:TextBox ID="txtMagv" runat="server" Width="255px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Họ và tên đệm</td>
                        <td>
                            <asp:TextBox ID="txtFname" runat="server" Width="255px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Tên</td>
                        <td>
                            <asp:TextBox ID="txtLname" runat="server" Width="255px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Trình độ </td>
                        <td>
                            <asp:TextBox ID="txtTrinhdo" runat="server" Width="255px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Chức vụ</td>
                        <td>
                            <asp:TextBox ID="txtChucvu" runat="server" Width="255px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Điện thoại</td>
                        <td>
                            <asp:TextBox ID="txtDienthoai" runat="server" Width="255px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Email</td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Width="255px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Chuyên ngành</td>
                        <td>
                            <asp:TextBox ID="txtChuyennganh" runat="server" Width="255px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Ngành</td>
                        <td>
                            <asp:TextBox ID="txtNganh" runat="server" Width="255px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Khoa</td>
                        <td>
                            <asp:TextBox ID="txtKhoa" runat="server" Width="255px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <asp:Button ID="btnCapnhat" runat="server" class="login100-form-btn" Text="Cập nhật"></asp:Button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <!-- footer -->

        <footer>
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
        </footer>
    </form>
</body>
</html>
