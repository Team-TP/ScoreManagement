<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLDiemGV.aspx.cs" Inherits="ScoreM.QLDiemGV" %>

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

    <title>Quản lí điểm</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">

            <div class="header">
                <nav class="navbar navbar-default navbar-static-top " role="navigation ">
                    <a class="navbar-brand " href="# "><span class="openbtn " style="font-size: 30px; cursor: pointer">&#9776;</span></a>

                    <ul class="nav navbar-nav ">
                        <button class="btn" type="submit">
                                <i class="fas fa-search"></i>
                            </button>
                        <li class="search">
                            <input type="text" placeholder="Search..." name="search">
                           
                        </li>
                        <li class="accname">
                            <asp:Label ID="accName" runat="server" Text="Label"></asp:Label>
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
                    <a href="LopHocPhanGV.aspx"><i class="fas fa-users fw"></i>Lớp học phần</a>
                    <a href="QLDiemGV.aspx"><i class="fas fa-edit fw fd"></i>Quản lý điểm</a>
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
        </div>
        <!-- content -->
        <div id="content">
            <h4>Lớp học phần</h4>
            <div class="col-md-12">
                <div class="col-md-4">
                    <asp:DropDownList ID="Dlist" runat="server" AutoPostBack="True" ControlStyle-CssClass="form-control" OnSelectedIndexChanged="Dlist_SelectedIndexChanged"></asp:DropDownList>
                </div>             
            </div>
            <div class="gridview">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1033px" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="STT">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="FirstName" HeaderText="Họ tên đệm" HtmlEncode="False">
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="LastName" HeaderText="Tên" HtmlEncode="False" />
                        <asp:BoundField DataField="Id" HeaderText="Mã sinh viên" HtmlEncode="False" />
                        <asp:BoundField DataField="Diligent" HeaderText="Điểm chuyên cần" HtmlEncode="False" NullDisplayText=" " />
                        <asp:BoundField DataField="MidTerm" HeaderText="Điểm GK" HtmlEncode="False" NullDisplayText=" " />
                        <asp:BoundField DataField="Pratice" HeaderText="Điểm TH" HtmlEncode="False" NullDisplayText=" " />
                        <asp:BoundField DataField="Exam" HeaderText="Điểm thi" HtmlEncode="False" NullDisplayText=" " />
                        <asp:BoundField HeaderText="Tổng kết" HtmlEncode="False" DataField="Tongket" />
                        <asp:ButtonField ButtonType="Button" CommandName="btnSua" ControlStyle-CssClass="btn btn-warning" HeaderText="Sửa" Text="Sửa" >                
                                                    <ControlStyle CssClass="btn btn-warning"></ControlStyle>
                        </asp:ButtonField>
                        <asp:TemplateField></asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
            <div id="EditModal" class="textbox" runat="server" visible="false">
                <div class="col-md-6">
                    <table>
                        <tr>
                            <td><span>Họ tên đệm</span>&emsp;</td>
                            <td><asp:TextBox ID="txtHodem" runat="server" class="form-control"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><span>Tên</span></td>
                            <td><asp:TextBox ID="txtten" runat="server" class="form-control"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><span>Mã sinh viên</span></td>
                            <td><asp:TextBox ID="txtmasv" runat="server" class="form-control"></asp:TextBox></td>
                        </tr>
                    </table>   
                    <br />
                    <br />
                    <asp:Button ID="btnSave" runat="server" class="btn btn-success" Text="Save" OnClick="btnSave_Click" />&emsp;&emsp;
                    <asp:Button ID="btnCancel" Class="btn btn-danger" Text="Cancel" runat="server" OnClick="btnCancel_Click" />
                </div>
                <div class="col-md-6">
                    <table>
                        <tr>
                            <td><span>Điểm chuyên cần</span>&emsp;</td>
                            <td><asp:TextBox ID="txtcc" runat="server" class="form-control"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><span>Điểm giữa kỳ</span></td>
                            <td><asp:TextBox ID="txtgk" runat="server" class="form-control"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td> <span>Điểm thực hành</span></td>
                            <td><asp:TextBox ID="txtth" runat="server" class="form-control"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><span>Điểm thi</span></td>
                            <td> <asp:TextBox ID="txtthi" runat="server" class="form-control"></asp:TextBox></td>
                        </tr>
                    </table>                  
                </div>
            </div>
        </div>
         
        <!--footer-->
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
