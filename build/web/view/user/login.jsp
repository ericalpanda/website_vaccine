<%-- 
    Document   : home
    Created on : May 22, 2023, 4:25:53 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="description" content=" Today in this blog you will learn how to create a responsive Login & Registration Form in HTML CSS & JavaScript. The blog will cover everything from the basics of creating a Login & Registration in HTML, to styling it with CSS and adding with JavaScript." />
        <meta
            name="keywords"
            content=" 
            Animated Login & Registration Form,Form Design,HTML and CSS,HTML CSS JavaScript,login & registration form,login & signup form,Login Form Design,registration form,Signup Form,HTML,CSS,JavaScript,
            "
            />

        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link href="../css/style_LG.css" rel="stylesheet" type="text/css"/>
        <script src="../custom-scripts.js" defer></script>
    </head>
    <body>
        <section class="wrapper">

            <div class="form signup ">
                <header>Login</header>
                <form method="post" action="login">
                    <input type="text" placeholder="Email address" required name = "email"/>
                    <input type="password" placeholder="Password" required name = "pass"/>
                    <input type="submit" value="submit" />
                </form>
                    <a href="#">Forgot password?</a>
            </div>

            <div class="form login ">

                <a href="register.jsp" style="text-decoration: none;"><header>Signup</header></a>
            </div>



            <script>
                const wrapper = document.querySelector(".wrapper"),
                        loginHeader = document.querySelector(".login header"),
                        signupHeader = document.querySelector(".signup header");


                loginHeader.addEventListener("click", () => {
                    wrapper.classList.add("active");
                });
                signupHeader.addEventListener("click", () => {
                    wrapper.classList.remove("active");
                });
            </script>
        </section>
    </body>
</html>

