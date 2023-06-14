<%-- 
    Document   : navbar
    Created on : Jun 6, 2023, 4:29:10 PM
    Author     : DELL VOSTRO 5510
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--load page-->
<div class="load-page">
    <div class="sk-wave">
        <div class="sk-rect sk-rect1"></div>
        <div class="sk-rect sk-rect2"></div>
        <div class="sk-rect sk-rect3"></div>
        <div class="sk-rect sk-rect4"></div>
        <div class="sk-rect sk-rect5"></div>
    </div>
</div>

<!-- Mobile nav -->
<nav class="visible-sm visible-xs mobile-menu-container mobile-nav">
    <div class="menu-mobile-nav navbar-toggle">
        <span class="icon-bar"><i class="fa fa-bars" aria-hidden="true"></i></span>
    </div>
    <div id="cssmenu" class="animated">
        <div class="uni-icons-close"><i class="fa fa-times" aria-hidden="true"></i></div>
        <ul class="nav navbar-nav animated">
            <li><a href="index.html">Home</a></li>
            <li class="has-sub"><a href='#'>List Vaccine</a>
                <ul>
                    <li><a href="list_of_vaccine.html">List Vaccine</a></li>
                    <li><a href="detail_vaccine.html">Detail Vaccine</a></li>
                </ul>
            </li>
            <li><a href="03_01_services.html">Booking Schedules</a></li>
            <li class="has-sub"><a href="#">Departments</a>
                <ul>
                    <li><a href="04_01_departments.html">Departments</a></li>
                    <li><a href="04_02_single_department.html">Single
                            Departments</a></li>
                </ul>
            </li>
        </ul>
        <div class="clearfix"></div>
    </div>
</nav>
<!-- End mobile menu -->

<div class="uni-gallery">
    <div id="wrapper-container" class="site-wrapper-container">
        <header>
            <div class="uni-medicare-header sticky-menu">
                <div class="container">
                    <div class="uni-medicare-header-main">
                        <div class="row">
                            <div class="col-md-2">
                                <!--LOGO-->
                                <div class="wrapper-logo">
                                    <a class="logo-default" href="#"><img src="images/logo.png" alt=""
                                                                          class="img-responsive"></a>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="col-md-10">
                                <!--MENU TEXT-->
                                <div class="uni-main-menu">
                                    <nav class="main-navigation uni-menu-text">
                                        <div class="cssmenu">
                                            <ul>
                                                <li><a href="index.html">Home</a></li>
                                                <li class="has-sub"><a href='#'>List Vaccine</a>
                                                    <ul>
                                                        <li><a href="list_of_vaccine.html">List Vaccine</a></li>
                                                        <li><a href="detail_vaccine.html">Detail Vaccine</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="03_01_services.html">Booking Schedules</a></li>
                                                <li class="has-sub"><a href="#">Departments</a>
                                                    <ul>
                                                        <li><a href="04_01_departments.html">Departments</a></li>
                                                        <li><a href="04_02_single_department.html">Single
                                                                Departments</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </nav>
                                </div>

                                <!--SEARCH AND APPOINTMENT-->
                                <div class="uni-search-appointment">
                                    <ul>
                                        <li class="un-btn-search">
                                            <i class="fa fa-search" aria-hidden="true"></i>
                                        </li>
                                        <li class="uni-btn-appointment">
                                            <a onclick="togglePopup();">Login</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!--FORM SEARCH-->
                        <div class="uni-form-search-header">
                            <div class="box-search-header collapse" id="box-search-header">
                                <div class="uni-input-group">
                                    <input type="text" name="key" placeholder="Search" class="form-control">
                                    <button class="uni-btn btn-search">
                                        <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>
                        </div>

                        <!-- LOGIN POPUP -->
                        <div id="login-popup" class="popup">
                            <div class="popup-content">
                                <section class="forms-section">
                                    <div class="forms">
                                        <div class="form-wrapper is-active">
                                            <button type="button" class="switcher switcher-login">
                                                Login
                                                <span class="underline"></span>
                                            </button>
                                            <form id="loginForm" action="login" method="post" class="form form-login">
                                                <fieldset>
                                                    <legend>Please, enter your email and password for login.</legend>
                                                    <%
                                                        String alertMessage = (String) request.getSession().getAttribute("alertMessage");
                                                        if (alertMessage != null) {
                                                    %>
                                                    <div class="alert alert-warning" style="color: red"><%= alertMessage%></div>
                                                    <%
                                                            // Xóa thuộc tính session để tránh hiển thị lại cảnh báo
                                                            request.getSession().removeAttribute("alertMessage");
                                                        }
                                                    %>
                                                    <div class="input-block">
                                                        <label for="login-email">E-mail</label>
                                                        <input type="email" required name = "email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Wrong format email">
                                                    </div>
                                                    <div class="input-block">
                                                        <label for="login-password">Password</label>
                                                        <input type="password" required name = "pass">
                                                    </div>
                                                    <div class="content">
                                                        <div class="roleChoice">
                                                            <select name="optionRole" >
                                                                <option value="optionuser" >User</option>
                                                                <option value="optionhospital" >Hospital</option>
                                                            </select>
                                                        </div>
                                                        <span class="navbar-text pass-link">
                                                            <a data-toggle="modal" data-target="#loginModal">
                                                                <span class="fa fa-sign-in"></span> Forgot password?</a>
                                                        </span>
                                                    </div>
                                                </fieldset>
                                                <button type="submit" class="btn-login">Login</button>
                                                <div class="signup-link">
                                                    Not a member? <a href="register.jsp">Signup now</a>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="form-wrapper">
                                            <button type="button" class="switcher switcher-signup">
                                                Sign Up
                                                <span class="underline"></span>
                                            </button>
                                            <form class="form form-signup">
                                                <fieldset>
                                                    <legend>Please, enter your email, password and password confirmation for sign up.</legend>
                                                    <div class="input-block">
                                                        <label for="signup-email">E-mail</label>
                                                        <input id="signup-email" type="email" required>
                                                    </div>
                                                    <div class="input-block">
                                                        <label for="signup-password">Password</label>
                                                        <input id="signup-password" type="password" required>
                                                    </div>
                                                    <div class="input-block">
                                                        <label for="signup-password-confirm">Confirm password</label>
                                                        <input id="signup-password-confirm" type="password" required>
                                                    </div>
                                                </fieldset>
                                                <button type="submit" class="btn-signup">Continue</button>
                                            </form>
                                        </div>
                                    </div>
                                </section>
                                <button class="close-button" onclick="closePopup()">X</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>