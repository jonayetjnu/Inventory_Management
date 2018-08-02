<%-- 
    Document   : index
    Created on : Apr 16, 2018, 10:31:49 PM
    Author     : zakir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/angular.js" type="text/javascript"></script>
        <script src="js/app.js" type="text/javascript"></script>
        <style type="text/css">
            @import "css/custom_css.css";
            .p{
                color:tomato;
            }
            .h3{color:blue;
            }
        </style>

    </head>
    <body ng-controller="myCtrl">


        <div class="container">
            <div class="row">
                <div class="header col-md-12">
                    <div class="col-lg-12 header">
                        <ui:insert name="header">
                              <h2><a href=""><b>Jonayet,s Online Store</b></a></h2>
                            <h3><b>Welcome to our Shop</b></h3>
                        </ui:insert>

                    </div>

                    <!--                    <div class="image">
                                            <img src="images/HomePage.jpg" alt="Norway" class="img">
                                        </div>-->
                </div>
                <div class="menu col-md-12">
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <ul class="nav navbar-nav">
                                    <li><a href="home.jsp">Home</a></li>
                                    <li><a href="product.jsp">Product</a></li>
                                    <li><a href="productDetails.jsp">Product Details</a></li>
                                    <li><a href="companyProduct.jsp">Store Product</a></li>>

                                    <li><a href="company.jsp">Company</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                </ul>
                                <ul class="nav navbar-nav navbar-right">     
                                        <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                                  </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="content col-md-12">
                    <ui:insert name="content">
                        <!--                        <div class="row">-->
                        <div class="col-md-12">
                            <div class="contact-sec text-center">
                                <div class="h3">
                                    <h3><b>Want to <span class="deco">contact</span> us?</b></h3>
                                    <div class="p">
                                        <h4>That's great! Give us a call or send us an email and we will get back to you as soon as possible!</h4>
                                    </div>
                                </div>
                                <div class="col-md-8 col-md-push-2">
                                    <form action="" method="post" role="form" class="contactForm">
                                        <div class="form-group">
                                            <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                            <div class="validation"></div>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                            <div class="validation"></div>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone No:" data-rule="minlen:4" data-msg="Please enter at least 11 chars of phone" />
                                            <div class="validation"></div>
                                        </div>
                                        <div class="form-group">
                                            <textarea class="form-control" name="message" rows="2" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                            <div class="validation"></div>
                                        </div>
                                        <div class="text-center"><button type="submit" class="btn btn-primary btn-lg">Send Message</button></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!--                        </div>-->

                    </ui:insert>
                </div>

                <div class="footer-area col-md-12">

                    <div class="col-lg-12 footer">
                        <ui:insert name=" footer">
                            <b> <I>THANKS FOR VISITING OUR SHOP </I> </b>
                        </ui:insert>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
