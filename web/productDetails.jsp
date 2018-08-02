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
                    <button data-toggle="modal" data-target="#myModalSave" type="button" class="btn btn-success">Add New Product Details</button>
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
                                <th>Product Category</th>
                                <th>Company Name</th>
                                <th>Model Name</th>
                                <th>Size</th>
                                <th>Color</th>
                                <th>Quantity</th>
                                <th>U.Purchase Cost</th>
                                <th>U.Sale Cost</th>
                                <th>T.Purchase Cost</th>
                                <th>T.Sale Cost</th>
                                <th colspan="4">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="drug_detail in drugDetails| filter: searchBox" required>
                                <td>{{$index + 1}}</td>
                                <td>{{drug_detail.dd_id}}</td>
                                <td>{{drug_detail.dd_brand_name}}</td>
                                <td>{{drug_detail.dd_company_name}}</td>

                                <td>{{drug_detail.dd_group_name}}</td>
                                <td>{{drug_detail.dd_type}}</td>

                                <td>{{drug_detail.dd_unit}}</td>
                                <td>{{drug_detail.dd_qty}}</td>
                                <td>{{drug_detail.dd_unit_buy}}</td>
                                <td>{{drug_detail.dd_unit_sale}}</td>
                                <td>{{drug_detail.dd_total_buy}}</td>
                                <td>{{drug_detail.dd_total_sale}}</td>
                                <td><button data-toggle="modal" data-target="#myModalBuy" type="button" class="btn btn-success" ng-click="selectDrugDetail(drug_detail)">PURCHASE</button></td>
                                <td><button data-toggle="modal" data-target="#myModalSale" type="button" class="btn btn-primary" ng-click="selectDrugDetail(drug_detail)">SALE</button></td>
                                <td><button data-toggle="modal" data-target="#myModalUpdate" type="button" class="btn btn-info" ng-click="selectDrugDetail(drug_detail)">UPDATE</button></td>
                                <td><button data-toggle="modal" data-target="#myModalDelete" type="button" class="btn btn-danger" ng-click="selectDrugDetail(drug_detail)">Delete</button></td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- Save DrugDetail Modal -->
                    <div id="myModalSave" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Insert Product Details</h4>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <!--                                            
                                                                                         <label for="cp_company_name">Product Category :</label>
                                                                                        <select ng-model="newCompanyProduct.cp_company_name" class="form-control" id="cp_company_name" type="text">
                                                                                            <option value="">--Select Drug Company Name--</option>
                                                                                            <option  ng-repeat="drug_company in drugCompanys">{{drug_company.dc_nick_name}}</option>
                                                                                        </select>
                                                                                        
                                                                                        <label for="cp_brand_name">Brand Name:</label>
                                                                                        <input ng-model="newCompanyProduct.cp_brand_name" type="text" class="form-control" id="cp_brand_name">
                                            
                                                                                                            <label for="cp_group_name">Group Name :</label>
                                                                                                            <select ng-model="newCompanyProduct.cp_group_name" class="form-control" id="cp_group_name" type="text">
                                                                                                                <option value="">--Select Drug Group Name--</option>
                                                                                                                <option  ng-repeat="drug_group_name in drugGroupNames">{{drug_group_name.dg_name}}</option>
                                                                                                            </select>
                                            
                                                                                        <label for="cp_group_name">Model Name :</label>
                                                                                        <input ng-model="newCompanyProduct.cp_group_name" type="text" class="form-control" id="cp_group_name">
                                            
                                                                                        <label for="cp_type">Size:</label>
                                                                                        <input ng-model="newCompanyProduct.cp_type" type="text" class="form-control" id="cp_type">
                                            
                                                                                        <label for="cp_unit">Color:</label>
                                                                                        <input ng-model="newCompanyProduct.cp_unit" type="text" class="form-control" id="cp_unit">-->

                                            <label for="dd_brand_name">Product Category :</label>
                                            <select ng-model="newDrugDetail.dd_brand_name" class="form-control" id="dd_brand_name" type="text">
                                                <option value="">Select Product: CATEGORY NAME</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_brand_name}}</option>
                                            </select>
                                            <!--
                                                                                 <label for="dd_brand_name">Brand Name :</label>
                                                                                     <input ng-model="newDrugDetail.dd_brand_name" type="text" class="form-control" id="pname">

                                            --> 

                                            <label for="cp_company_name">Company Name :</label>
                                            <select ng-model="newDrugDetail.dd_company_name" class="form-control" id="cp_company_name" type="text">
                                                <option value="">select drug: COMPANY NAME</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_company_name}}</option>
                                            </select>
                                            <!--                                                                                    <label for="dd_company_name">Company Name :</label>
                                                                                                                                    <input ng-model="newDrugDetail.dd_company_name" type="text" class="form-control" id="qty">-->

                                            <label for="cp_group_name">Model Name :</label>
                                            <select ng-model="newDrugDetail.dd_group_name" class="form-control" id="cp_group_name" type="text">
                                                <option value="">Select Product: MODEL NAME</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_group_name}}</option>
                                            </select>
                                            <!--                                                                                    <label for="dd_group_name">Group Name :</label>
                                                                                                                                    <input ng-model="newDrugDetail.dd_group_name" type="text" class="form-control" id="price">-->

                                            <label for="cp_type">Size :</label>
                                            <select ng-model="newDrugDetail.dd_type" class="form-control" id="cp_type" type="text">
                                                <option value="">Select Product: SIZE</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_type}}</option>
                                            </select>
                                            <!--                                                                                    <label for="dd_type">Type :</label>
                                                                                                                                    <input ng-model="newDrugDetail.dd_type" type="text" class="form-control" id="qty">-->



                                            <label for="cp_unit">Color :</label>
                                            <select ng-model="newDrugDetail.dd_unit" class="form-control" id="cp_unit" type="text">
                                                <option value="">Select Product: COLOR</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_unit}}</option>
                                            </select>
                                            <!--                                                                                    <label for="dd_unit">Unit :</label>
                                                                                                                                    <input ng-model="newDrugDetail.dd_unit" type="text" class="form-control" id="qty">-->

                                            <label for="dd_qty">Quantity :</label>
                                            <input ng-model="newDrugDetail.dd_qty" type="text" class="form-control" id="qty">

                                            <label for="dd_unit_buy">U.Purchase Cost :</label>
                                            <input ng-model="newDrugDetail.dd_unit_buy" type="text" class="form-control" id="qty">

                                            <label for="dd_unit_sale">U.Sale Cost :</label>
                                            <input ng-model="newDrugDetail.dd_unit_sale" type="text" class="form-control" id="qty">

                                            <!--                                            <label for="dd_total_buy">T.Buy Cost :</label>
                                                                                        <input ng-model="newDrugDetail.dd_total_buy" type="text" class="form-control" id="qty">
                                                                                        
                                                                                        <label for="dd_total_sale">T.Sale Cost :</label>
                                                                                        <input ng-model="newDrugDetail.dd_total_sale" type="text" class="form-control" id="qty">-->
                                        </div>
                                        <button ng-click="saveDrugDetail()" data-dismiss="modal" type="submit" class="btn btn-success">Submit</button>
                                    </form> 
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Update DrugDetail Modal -->
                    <div id="myModalUpdate" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Update Product Details</h4>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="dd_brand_name">Product Category :</label>
                                            <select ng-model="clickedDrugDetail.dd_brand_name" class="form-control" id="dd_brand_name" type="text">
                                                <option value="">select Product: PRODUCT CATEGORY </option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_brand_name}}</option>
                                            </select>
                                            <!--                                        <label for="dd_brand_name">Brand Name :</label>
                                                                                        <input ng-model="newDrugDetail.dd_brand_name" type="text" class="form-control" id="pname">-->


                                            <label for="cp_company_name">Company Name :</label>
                                            <select ng-model="clickedDrugDetail.dd_company_name" class="form-control" id="cp_company_name" type="text">
                                                <option value="">select Product: COMPANY NAME</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_company_name}}</option>
                                            </select>
                                            <!--                                        <label for="dd_company_name">Company Name :</label>
                                                                                        <input ng-model="newDrugDetail.dd_company_name" type="text" class="form-control" id="qty">-->


                                            <label for="cp_group_name">Group Name :</label>
                                            <select ng-model="clickedDrugDetail.dd_group_name" class="form-control" id="cp_group_name" type="text">
                                                <option value="">select Product:MODEL NAME</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_group_name}}</option>
                                            </select>
                                            <!--                                        <label for="dd_group_name">Group Name :</label>
                                                                                        <input ng-model="newDrugDetail.dd_group_name" type="text" class="form-control" id="price">-->

                                            <label for="cp_type">Model Name :</label>
                                            <select ng-model="clickedDrugDetail.dd_type" class="form-control" id="cp_type" type="text">
                                                <option value="">select Product:SIZE</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_type}}</option>
                                            </select>
                                            <!--                                        <label for="dd_type">Type :</label>
                                                                                        <input ng-model="newDrugDetail.dd_type" type="text" class="form-control" id="qty">-->



                                            <label for="cp_unit">Size:</label>
                                            <select ng-model="clickedDrugDetail.dd_unit" class="form-control" id="cp_unit" type="text">
                                                <option value="">select Product: COLOR</option>
                                                <option  ng-repeat="company_product in companyProducts">{{company_product.cp_unit}}</option>
                                            </select>
                                            <!--                                                                                    <label for="dd_unit">Unit :</label>
                                                                                                                                    <input ng-model="newDrugDetail.dd_unit" type="text" class="form-control" id="qty">-->

                                            <label for="dd_qty">Color:</label>
                                            <input ng-model="clickedDrugDetail.dd_qty" type="text" class="form-control" id="qty">

                                            <label for="dd_unit_buy">U.Purchase Cost :</label>
                                            <input ng-model="clickedDrugDetail.dd_unit_buy" type="text" class="form-control" id="qty">

                                            <label for="dd_unit_sale">U.Sale Cost :</label>
                                            <input ng-model="clickedDrugDetail.dd_unit_sale" type="text" class="form-control" id="qty">

                                            <!--                                            <label for="dd_total_buy">T.Buy Cost :</label>
                                                                                        <input ng-model="newDrugDetail.dd_total_buy" type="text" class="form-control" id="qty">
                                                                                        
                                                                                        <label for="dd_total_sale">T.Sale Cost :</label>
                                                                                        <input ng-model="newDrugDetail.dd_total_sale" type="text" class="form-control" id="qty">-->
                                        </div>
                                        <button ng-click="updateDrugDetail()" data-dismiss="modal" type="submit" class="btn btn-success">Update</button>
                                    </form> 
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Buy DrugDetail Modal -->
                    <div id="myModalBuy" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- Content Modal -->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Purchase Product Details</h4>
                                </div>
                                <div class="modal-body">
                                    <form>

                                        <div class="form-group">
                                            <label for="dd_qty">Quantity :</label>
                                            <input ng-model="clickedDrugDetail.dd_qty" type="text" class="form-control" id="qty">
                                        </div>

                                        <button ng-click="buyDrug()" data-dismiss="modal" type="submit" class="btn btn-success">PURCHASE</button>
                                    </form> 
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Sale DrugDetail Modal -->
                    <div id="myModalSale" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- Content Modal -->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Sale Product Details</h4>
                                </div>
                                <div class="modal-body">
                                    <form>

                                        <div class="form-group">
                                            <label for="dd_qty">Quantity :</label>
                                            <input ng-model="clickedDrugDetail.dd_qty" type="text" class="form-control" id="qty">
                                        </div>

                                        <button ng-click="saleDrug()" data-dismiss="modal" type="submit" class="btn btn-success">SALE</button>
                                    </form> 
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Delete DrugDetail Modal -->
                    <div id="myModalDelete" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Delete Product Details</h4>
                                </div>
                                <div class="modal-body">
                                    Are you want to delete  {{clickedDrugDetail.dd_group_name}}??
                                </div>
                                <div class="modal-footer">
                                    <button ng-click="deleteDrugDetail()" type="button" class="btn btn-success" data-dismiss="modal">Ok</button>
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
