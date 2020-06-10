<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SinhvienRenluyen.aspx.cs" Inherits="ScoreM.SinhvienProf" %>

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
    <link rel=" stylesheet " href="wwwroot/css2/StyleDiemRL.css ">

    <title>Điểm rèn luyện</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">

            <div class="header">
                <nav class="navbar navbar-default navbar-static-top " role="navigation ">
                    <a class="navbar-brand " href="# "><span class="openbtn " style="font-size: 30px; cursor: pointer" onclick="openNav() ">&#9776;</span></a>

                    <ul class="nav navbar-nav ">
                        <button class="btn" type="submit">
                            <i class="fas fa-search"></i>
                        </button>
                        <li class="search">
                            <input type="text" placeholder="Search..." name="search">
                        </li>

                        <li class="accname ">
                            <asp:Label ID="accname" runat="server" Text="Label"></asp:Label>

                        </li>
                        <li>
                            <img class="avatar " src="wwwroot/Picture/avatar.png " alt=" ">
                        </li>
                        <li class="logout ">
                            <a onclick="myconfirm()" href="#">Logout</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <script type="text/javascript">
                function myconfirm() {
                    var result = confirm("Bạn có chắc chắn muốn đăng xuất?");
                    if (result) {
                        window.location.href = "Login.aspx";
                    }
                    else {

                    }
                }
            </script>
            <!-- left menu -->
            <div>
                <div id="mySidenav" class="sidenav">

                    <img class="imglogo" src="wwwroot/picture/LOGO_text.jpg" alt="" height="50" style="background-image: none;">
                    <a href="# "><i class="fas fa-users fw"></i>Đăng kí học<i class="fas fa-angle-right ed"></i></a>
                    <a href="SVDiemTonghop.aspx"><i class="fas fa-seedling fw"></i>Tra cứu điểm tổng hợp</a>
                    <a><i class="fas fa-address-card fw fd"></i>Thông tin cá nhân<i class="fas fa-angle-down ed"></i>
                        <a href="#">Xem điểm theo lớp<br />
                            và môn học</a>
                        <a href="#">Tra cứu điểm<i class="fas fa-angle-right ed"></i></a>
                        <a href="SinhvienRenluyen.aspx">Tra cứu điểm rèn luyện</a>
                        <a href="SinhvienHoso.aspx">Thông tin hồ sơ sinh viên</a>
                    </a>

                    <a href="PasswordSV.aspx"><i class="fas fa-key fw "></i>Quản lý mật khẩu </a>

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
        </div>
        <!-- content -->
        <div id="content">
            <div class="content">
                <h3>Điểm rèn luyện</h3>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="923px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="STT">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                            <FooterStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="SchoolYear" HeaderText="Năm học" HtmlEncode="False" />
                        <asp:BoundField DataField="Semester" HeaderText="Học kỳ" />
                        <asp:BoundField DataField="ScoreOfConduct" HeaderText="Điểm rèn luyện" />
                        <asp:BoundField DataField="Classification" HeaderText="Xếp loại" HtmlEncode="False" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
        </div>
        <!-- footer -->

        <footer>
            <div class="container-fluid footer ">
                <div class="row">
                    <div class="col-md-10 ">
                        <div class="address">
                            <div class="col-md-1"><i class="fas fa-map-marker "></i></div>
                            <div class="col-md-11">
                                <p>182 Lê Duẩn - Thành Phố Vinh - Tỉnh Nghệ An</p>
                            </div>
                        </div>
                        <div class="phone">
                            <div class="col-md-1"><i class="fas fa-phone"></i></div>
                            <div class="col-md-11">
                                <p>(0238)3855.452, (0238)8988.989 </p>
                            </div>
                        </div>
                        <div class="email">
                            <div class="col-md-1"><i class="fas fa-envelope "></i></div>
                            <div class="col-md-11">
                                <p>vinhuni@vinhuni.edu.vn</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 ">
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
