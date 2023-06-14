<%-- 
    Document   : home
    Created on : May 22, 2023, 11:34:07 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Document</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css"/>
    <link href="../css/bootstrap-4.0.0-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../css/bootstrap-4.0.0-dist/css/bootstrap-grid.css" rel="stylesheet" type="text/css"/>
</head>

<body>

    <nav class="navbar navbar-expand-sm fixed-top text-dark .bg-white choice-taskbar">
        <div class="container">

            <a class="navbar-brand" href="#"></a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"> <img src="../icon/bars-solid.svg" alt=""> </span>
            </button>

            <div class="collapse navbar-collapse " id="collapsibleNavbar">
                <ul class="navbar-nav mr-auto choice-taskbar-one">
                    <li class="nav-item choice-taskbar">
                        <a href="./home.html">Home</a>
                    </li>

                    <li class="nav-item choice-taskbar">
                        <a href="./aboutus.html">
                            About
                        </a>
                    </li>


                    <li class="nav-item choice-taskbar">
                        <a href="#">
                            Menu
                        </a>
                    </li>


                    <li class="nav-item choice-taskbar">
                        <a href="./contactus.html">
                            Contact
                        </a>
                    </li>

                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-center" href="#" id="navbardrop" data-toggle="dropdown">
                       
                        </a>
                        <div class="dropdown-menu">
                           <a class="dropdown-item" href="#">Javascript</a>
                           <a class="dropdown-item" href="#">Css</a>
                           <a class="dropdown-item" href="#">Bootstrap</a>
                        </div>
                     </li>


                </ul>

                <ul class="navbar-nav ml-auto order-last login-logout">
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="../">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Logout</a>
                    </li> -->
                <!-- </ul> -->

                <!-- <ul class="navbar-nav ml-auto"> -->                    

                     <form class="form-inline" action="/somepage">
                        <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">Search</button>
                    </form>

                    <div class="btn-group dropleft">
                        <div class="btn " data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                              </svg>
                            </div>
                            
                       
                              <div class="dropdown-menu">
                                  <a class="dropdown-item" href="login.jsp">Login</a>
                           <a class="dropdown-item" href="#">Logout</a>
                           <a class="dropdown-item" href="#">Edit profile</a>
                        </div>
                       
                    </div>
         
                </ul>


            </div>
    </nav>
    <div class="collapse navbar-collapse" id="Navbar">
        <ul class="navbar-nav mr-auto"> ... </ul>
    </div>


    <div id="slider">
        <div class="text-content">
            <h2 class="text-description">Your pleasure is our happiness</h2>
            <h2 class="text-header">Outer beauty comes from inner health.</h2>

        </div>
    </div>




    <div class="main-content">


        <div class="container">
            <div class="row  choice-list">
                <div class="col-sm-6 ml-auto">
                    <h5>DANH MỤC SẢN PHẨM</h5>
                </div>
                <div class="col-sm-6 mr-auto">
                    <a href="./detailVaccine.jsp">Xem tất cả</a>
                </div>
            </div>
        </div>



        <div class="container">
            <div class="row">
                <div class="col-md-4 content-vaccine">
                    <img src="https://vnvc.vn/wp-content/uploads/2021/07/vaxigrip-tetra.jpg" alt="">
                    <h6>Vắc xin Tứ giá Vaxigrip Tetra phòng bệnh Cúm mùa</h6>

                </div>
                <div class="col-md-4 content-vaccine">
                    <img src="https://vnvc.vn/wp-content/uploads/2019/11/prevenar.jpg" alt="">
                    <h6>Vắc xin phế cầu PREVENAR 13 – Phòng các bệnh do phế cầu khuẩn</h6>

                </div>
                <div class="col-md-4 content-vaccine">
                    <img src="https://vnvc.vn/wp-content/uploads/2020/02/boostrix.jpg" alt="">
                    <h6>Vắc xin BOOSTRIX (Bỉ) phòng Ho gà – Bạch hầu – Uốn ván</h6>


                </div>
            </div>
        </div>



        <div class="container">
            <div class="row">
                <div class="col-md-4 content-vaccine">
                    <img src="https://vnvc.vn/wp-content/uploads/2021/07/vaxigrip-tetra.jpg" alt="">
                    <h6>Vắc xin Tứ giá Vaxigrip Tetra phòng bệnh Cúm mùa</h6>

                </div>
                <div class="col-md-4 content-vaccine">
                    <img src="https://vnvc.vn/wp-content/uploads/2019/11/prevenar.jpg" alt="">
                    <h6>Vắc xin phế cầu PREVENAR 13 – Phòng các bệnh do phế cầu khuẩn</h6>

                </div>
                <div class="col-md-4 content-vaccine">
                    <img src="https://vnvc.vn/wp-content/uploads/2020/02/boostrix.jpg" alt="">
                    <h6>Vắc xin BOOSTRIX (Bỉ) phòng Ho gà – Bạch hầu – Uốn ván</h6>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-4 content-vaccine">
                    <img src="https://vnvc.vn/wp-content/uploads/2021/07/vaxigrip-tetra.jpg" alt="">
                    <h6>Vắc xin Tứ giá Vaxigrip Tetra phòng bệnh Cúm mùa</h6>

                </div>
                <div class="col-md-4 content-vaccine">
                    <img src="https://vnvc.vn/wp-content/uploads/2019/11/prevenar.jpg" alt="">
                    <h6>Vắc xin phế cầu PREVENAR 13 – Phòng các bệnh do phế cầu khuẩn</h6>

                </div>
                <div class="col-md-4 content-vaccine">
                    <img src="https://vnvc.vn/wp-content/uploads/2020/02/boostrix.jpg" alt="">
                    <h6>Vắc xin BOOSTRIX (Bỉ) phòng Ho gà – Bạch hầu – Uốn ván</h6>

                </div>

            </div>
        </div>




    </div>







    <footer>
        <div class="row">
            <div class="col-4 col-sm-2">
                <p>Links</p>
                <ul class="list-unstyled">
                    <li><a href="./home.html">Home</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="">Menu</a></li>
                    <li><a href="">Contact</a></li>
                </ul>
            </div>

            <div class="col-7 col-sm-5">
                <p>Our Address</p>
                <span>121, Clear Water Bay Road <br>
                    Clear Water Bay, Kowloon <br>
                    HONG KONG </span>


                <div class="row">
                    <div class="col-xl-12">
                        <img width="10" height="10" src="icon/phone-solid.svg" alt="">
                        <span class="">+852 1234 5678</span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xl-12">
                        <img width="10" height="10" src="icon/tty-solid.svg" alt="">
                        <span class="">+852 8765 4321 </span>
                    </div>
                </div>


                <div class="row">
                    <div class="phone col-xl-12">
                        <img width="10" height="10" src="icon/envelope-solid.svg" alt="">
                        <a href="mailto:confusion@food.net">confusion@food.net</a>
                    </div>
                </div>


            </div>

            <div class="col-12 col-sm-4" style="margin: auto;">
                <div class="row social-media">
                    <img width="40" height="40" src="icon/450_1000.jpg" alt="">
                    <img width="40" height="40" src="icon/640px-Facebook-icon-1.png" alt="">
                    <img width="40" height="40" src="icon/download.png" alt="">
                    <img width="40" height="40" src="icon/twitter-icon-square-logo-108D17D373-seeklogo.com.png" alt="">
                    <img width="40" height="40" src="icon/pngtree-youtube-square-png-png-image_1589629.jpg" alt="">
                    <img width="40" height="40" src="icon/images.jpg" alt="">
                </div>
            </div>

            <div class="col-auto" style="margin: auto;">© Copyright 2018 Ristorante Con Fusion</div>
        </div>
    </footer>


























    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


</body>

</html>
