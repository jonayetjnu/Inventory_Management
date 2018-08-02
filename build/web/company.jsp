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
        <title>Inventory Page</title>
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
                <!--<div class="content-area col-md-12">-->
                <!--<div class="row">-->
                <!--                        <div class="sidebar col-md-3">
                                            <ul class="">
                                                <li><a href="#">Link_1</a></li>
                                                <li><a href="#">Link_2</a></li>
                                                <li><a href="#">Link_3</a></li>
                                                <li><a href="#">Link_4</a></li>
                                                <li><a href="#">Link_5</a></li>
                                            </ul>
                                        </div>-->
                <div class="content col-md-12">
                    <button data-toggle="modal" data-target="#myModalSave" type="button" class="btn btn-success">Add New Compay</button>
                    Search Item : <input type="text" ng-model="searchBox" placeholder="Search.....">
                    <br><br>
                    <div class="alert alert-success alert-dismissible" ng-show="message">
                        <a href="#" class="close" ng-click="messageClose()">&times;</a>
                        <strong>Success!</strong> {{message}}
                    </div>
                    <table class="table table-striped table-bordered">

                        <thead>
                            <tr>

                                <th>Sl.No</th> 
                                <th>ID</th>
                                <th>Company Nick Name</th>
                                <th>Company Full Name</th>
                                <!--                                <th>Company Address</th>
                                                                <th>Company Phone</th>-->
                                <th colspan="2">Action</th>

                            </tr>
                        </thead>



                        <tbody>
                            <tr ng-repeat="drug_company in drugCompanys| filter: searchBox" required>
                                <td>{{$index + 1}}</td>
                                <td>{{drug_company.dc_id}}</td>
                                <td>{{drug_company.dc_nick_name}}</td>
                                <td>{{drug_company.dc_full_name}}</td>
                                <!--                                <td>{{drug_company.dc_address}}</td>
                                                                <td>{{drug_company.dc_phone}}</td>-->
                                <td><button data-toggle="modal" data-target="#myModalEdit" type="button" class="btn btn-primary" ng-click="selectDrugCompany(drug_company)">Update</button></td>
                                <td><button data-toggle="modal" data-target="#myModalDelete" type="button" class="btn btn-danger" ng-click="selectDrugCompany(drug_company)">Delete</button></td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- Save Modal -->
                    <div id="myModalSave" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Insert Company</h4>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="dc_nick_name">Company Nick Name:</label>
                                            <input ng-model="newDrugCompany.dc_nick_name" type="text" class="form-control" id="dc_nick_name">
                                        </div>
                                        <div class="form-group">
                                            <label for="dc_full_name">Company Full Name</label>
                                            <input ng-model="newDrugCompany.dc_full_name" type="text" class="form-control" id="dc_full_name">
                                        </div>
                                        <!--                                        <div class="form-group">
                                                                                    <label for="dc_address">Compay Address</label>
                                                                                    <input ng-model="newDrugCompany.dc_address" type="text" class="form-control" id="dc_address">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label for="dc_phone">Compay Phone</label>
                                                                                    <input ng-model="newDrugCompany.dc_phone" type="text" class="form-control" id="dc_phone">
                                                                                </div>-->
                                        <button ng-click="saveDrugCompany()" data-dismiss="modal" type="submit" class="btn btn-success">Submit</button>
                                    </form> 
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Update Modal -->
                    <div id="myModalEdit" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- Content Modal -->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Update Company</h4>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="dc_nick_name">Company Nick Name:</label>
                                            <input ng-model="clickedDrugCompany.dc_nick_name" type="text" class="form-control" id="dc_nick_name">
                                        </div>
                                        <div class="form-group">
                                            <label for="dc_full_name">Company Full Name::</label>
                                            <input ng-model="clickedDrugCompany.dc_full_name" type="text" class="form-control" id="dc_full_name">
                                        </div>
                                        <!--                                        <div class="form-group">
                                                                                    <label for="dc_address">DrugCompany Address :</label>
                                                                                    <input ng-model="clickedDrugCompany.dc_address" type="text" class="form-control" id="dc_address">
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <label for="dc_phone">DrugCompany Phone :</label>
                                                                                    <input ng-model="clickedDrugCompany.dc_phone" type="text" class="form-control" id="dc_phone">
                                                                                </div>-->

                                        <button ng-click="updateDrugCompany()" data-dismiss="modal" type="submit" class="btn btn-success">Update</button>
                                    </form> 
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Delete Modal -->
                    <div id="myModalDelete" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Delete Company</h4>
                                </div>
                                <div class="modal-body">
                                    Are you want to delete {{clickedDrugCompany.dc_nick_name}}??
                                </div>
                                <div class="modal-footer">
                                    <button ng-click="deleteDrugCompany()" type="button" class="btn btn-success" data-dismiss="modal">Ok</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--</div>-->
                <!--</div>-->
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
