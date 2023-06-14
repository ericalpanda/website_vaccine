<%-- 
    Document   : register
    Created on : May 22, 2023, 4:30:51 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Registration Form in HTML CSS</title>
        <!---Custom CSS File--->
        <link href="../css/style_RG.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <section class="container">
            <header>Registration Form</header>
            <form action="registerController" method="post" class="form">
                <div class="input-box">
                    <label>Full Name</label>
                    <input type="text" placeholder="Enter full name" name="name" required />
                </div>

                <div class="input-box">
                    <label>Email Address</label>
                    <input type="email" placeholder="Enter email address" name="email" required />
                </div>


                <div class="column">
                    <div class="input-box">
                        <label>Password</label>
                        <input type="text" placeholder="Enter password" name="password" required />
                    </div>
                    <div class="input-box">
                        <label>Phone number</label>
                        <input pattern="(84|0[3|5|7|8|9])+([0-9]{8})\b" type="number" placeholder="Enter phone number" name="phone" required />
                    </div>

                </div>


                <div class="column">
                    <div class="input-box">
                        <label>Identification</label>
                        <input type="number" placeholder="Enter Identification number" name="identification" required />
                    </div>
                    <div class="input-box">
                        <label>Birth Date</label>
                        <input type="date" placeholder="Enter birth date" required name ="dob"/>
                    </div>
                </div>
                <div class="gender-box">
                    <h3>Gender</h3>
                    <div class="gender-option">
                        <div class="gender">
                            <input  value="false" type="radio" id="check-male" name="gender" name = "gender" checked />
                            <label for="check-male">male</label>
                        </div>
                        <div class="gender">
                            <input  value="true" type="radio" id="check-female" name="gender" name = "gender" />
                            <label for="check-female">Female</label>
                        </div>

                    </div>
                </div>

                <button>Submit</button>
            </form>
        </section>
    </body>
</html>

