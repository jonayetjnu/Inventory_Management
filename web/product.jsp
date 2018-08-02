<%-- 
    Document   : index
    Created on : Apr 16, 2018, 10:31:49 PM
    Author     : Jonayet
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
        </style>

    </head>
    <body ng-controller="myCtrl">


        <div class="container">
            
                <div class="col-lg-12 header">
                    <ui:insert name="header">
                     
                            <h2><a href=""><b>Jonayet,s Online Store</b></a></h2>
                        <h3><b>Welcome to our Shop</b></h3>
                    </ui:insert>

                </div>
           
          
<!--            <div class="row">
                <div class="header col-md-12">
                                        <div class="image">
                                            <img src="images/Header.jpg" alt="Norway" class="img">
                                        </div>
                </div>
            </div>-->
                <div class="menu col-md-12">
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <ul class="nav navbar-nav">
                                <li><a href="home.jsp">Home</a></li>
                                    <li><a href="product.jsp">Product</a></li>
                                     <li><a href="productDetails.jsp">Product Details</a></li>
                                    <li><a href="companyProduct.jsp">Store Product</a></li>
                                  
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
 <div class="container">    
  <div class="row">
    <div class="col-sm-3">
      <div class="panel panel-warning">
        <div class="panel-heading">Dell Corei5</div>
        <div class="panel-body"><img src="images/Dell corei5.jpg" class="img-responsive" style="width:100%" alt="image"></div>
        <div class="panel-footer" style="padding:15px"><span>Price:Tk 58000 only</span> <button type="button" class="btn btn-success" style="float:right">Add to Cart</button></div>
      </div>
    </div>
    <div class="col-sm-3"> 
      <div class="panel panel-danger">
        <div class="panel-heading">Hp i3-5005u</div>
        <div class="panel-body"><img src="images/Hp i3-5005u.jpg" class="img-responsive" style="width:100%" alt="image"></div>
        <div class="panel-footer"><span>Price:Tk 56000 only</span> <button type="button" class="btn btn-success" style="float:right">Add to Cart</button></div>
      </div>
    </div>
    <div class="col-sm-3"> 
      <div class="panel panel-success">
        <div class="panel-heading">Hp 15-f009wm</div>
        <div class="panel-body"><img src="images/HP 15-f009wm.jpeg" class="img-responsive" style="width:100%" alt="image"></div>
        <div class="panel-footer"><span>Price:Tk 55000 only</span> <button type="button" class="btn btn-success" style="float:right">Add to Cart</button></div>
      </div>
    </div>
	<div class="col-sm-3"> 
      <div class="panel panel-success">
        <div class="panel-heading">Hp-Pavilion</div>
        <div class="panel-body"><img src="images/HP-Pavilion.jpg" class="img-responsive" style="width:100%" alt="image"></div>
        <div class="panel-footer"><span>Price:Tk 60000 only</span> <button type="button" class="btn btn-success" style="float:right">Add to Cart</button></div>
      </div>
    </div>
	
  </div>
</div><br>

<div class="container">    
    <div class="row">
    <div class="col-sm-3">
      <div class="panel panel-warning">
        <div class="panel-heading">Samsung Galaxy S6</div>
        <div class="panel-body"><img src="images/S6.2.jpg" class="img-responsive" style="width:100%" alt="image"></div>
        <div class="panel-footer" style="padding:15px"><span>Price:Tk 26000 only</span> <button type="button" class="btn btn-success" style="float:right">Add to Cart</button></div>
      </div>
    </div>
    <div class="col-sm-3"> 
      <div class="panel panel-danger">
        <div class="panel-heading">Samsung Galaxy Note5</div>
        <div class="panel-body"><img src="images/S note5.jpg" class="img-responsive" style="width:100%" alt="image"></div>
        <div class="panel-footer"><span>Price:Tk 20000 only</span> <button type="button" class="btn btn-success" style="float:right">Add to Cart</button></div>
      </div>
    </div>
    <div class="col-sm-3"> 
      <div class="panel panel-success">
        <div class="panel-heading">Samsung Galaxy S3</div>
        <div class="panel-body"><img src="images/S3.jpg" class="img-responsive" style="width:100%" alt="image"></div>
        <div class="panel-footer"><span>Price:Tk 22000 only</span> <button type="button" class="btn btn-success" style="float:right">Add to Cart</button></div>
      </div>
    </div>
	<div class="col-sm-3"> 
      <div class="panel panel-success">
        <div class="panel-heading">Samsung Galaxy S5</div>
        <div class="panel-body"><img src="images/S5.jpg" class="img-responsive" style="width:100%" alt="image"></div>
        <div class="panel-footer"><span>Price:Tk 24000 only</span> <button type="button" class="btn btn-success" style="float:right">Add to Cart</button></div>
      </div>
    </div>
	
  </div>
</div><br>

<div class="container">    
    <div class="row">
    <div class="col-sm-3">
      <div class="panel panel-warning">
        <div class="panel-heading">Walton SFFA9PN</div>
        <div class="panel-body"><img src="images/Walton 50Gtt512.jpg" class="img-responsive" style="width:100%" alt="image"></div>
        <div class="panel-footer" style="padding:15px"><span>Price:Tk 36000 only</span> <button type="button" class="btn btn-success" style="float:right">Add to Cart</button></div>
      </div>
    </div>
    <div class="col-sm-3"> 
      <div class="panel panel-danger">
        <div class="panel-heading">Walton MFFA5PN</div>
        <div class="panel-body"><img src="images/Walton.jpg" class="img-responsive" style="width:100%" alt="image"></div>
        <div class="panel-footer"><span>Price:Tk 35000 only</span> <button type="buttopn" class="btn btn-success" style="float:right">Add to Cart</button></div>
      </div>
    </div>
    <div class="col-sm-3"> 
      <div class="panel panel-success">
        <div class="panel-heading">Walton Fc 1B3</div>
        <div class="panel-body"><img src="images/Walton Fc 1B3.png" class="img-responsive" style="width:100%" alt="image"></div>
        <div class="panel-footer"><span>Price:Tk 30000 only</span> <button type="button" class="btn btn-success" style="float:right">Add to Cart</button></div>
      </div>
    </div>
	<div class="col-sm-3"> 
      <div class="panel panel-success">
        <div class="panel-heading">Walton WFFA3PN</div>
        <div class="panel-body"><img src="images/Walton WFFA3PN.png" class="img-responsive" style="width:100%" alt="image"></div>
        <div class="panel-footer"><span>Price:Tk 36000 only</span> <button type="button" class="btn btn-success" style="float:right">Add to Cart</button></div>
      </div>
    </div>
	
  </div>
</div><br><br>
                        
                        
            
                        
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
