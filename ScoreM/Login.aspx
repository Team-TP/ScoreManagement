﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ScoreM.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Đăng nhập</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="wwwroot/Login/images/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="wwwroot/Login/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="wwwroot/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="wwwroot/Login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="wwwroot/Login/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="wwwroot/Login/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="wwwroot/Login/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="wwwroot/Login/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="wwwroot/Login/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="wwwroot/Login/css/util.css">
    <link rel="stylesheet" type="text/css" href="wwwroot/Login/css/main.css">
    <!--===============================================================================================-->
</head>

<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-form-title" style="background-image: url(wwwroot/Login/images/bg-01.jpg);">
                    <span class="login100-form-title-1">
						Đăng nhập
					</span>
                </div>

                <form id="form1" runat="server" class="login100-form validate-form" method="post">
                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                        <span class="label-input100">Username</span>
                        <input id="txtUser" runat="server" class="input100" type="text" name="username" placeholder="Enter username"/>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-18" data-validate="Password is required">
                        <span class="label-input100">Password</span>
                        <input id="txtPass" runat="server" class="input100" type="password" name="pass" placeholder="Enter password"/>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="flex-sb-m w-full p-b-30">
                        <div class="contact100-form-checkbox">
                            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me"/>
                            <label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
                        </div>

                        <div>
                            <a href="#" class="txt1">
								Forgot Password?
							</a>
                        </div>
                    </div>

                    <div class="container-login100-form-btn">
                        
                        <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" class="login100-form-btn" OnClick="btnLogin_Click"/>
                        
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!--===============================================================================================-->
    <script src="wwwroot/Login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="wwwroot/Login/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="wwwroot/Login/vendor/bootstrap/js/popper.js"></script>
    <script src="wwwroot/Login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="wwwroot/Login/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="wwwroot/Login/vendor/daterangepicker/moment.min.js"></script>
    <script src="wwwroot/Login/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="wwwroot/Login/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="wwwroot/Login/js/main.js"></script>

</body>
</html>
