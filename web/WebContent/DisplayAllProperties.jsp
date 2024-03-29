

<%@page import="ManageData.ConnectionManager"%>
<%@page import="ManageData.RegisterUserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>HomeState</title>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"> 
        <link rel="stylesheet" href="../resources/User/fonts/icomoon/style.css">

        <link rel="stylesheet" href="../resources/User/css/bootstrap.min.css">
        <link rel="stylesheet" href="../resources/User/css/magnific-popup.css">
        <link rel="stylesheet" href="../resources/User/css/jquery-ui.css">
        <link rel="stylesheet" href="../resources/User/css/owl.carousel.min.css">
        <link rel="stylesheet" href="../resources/User/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="../resources/User/css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="../resources/User/css/mediaelementplayer.css">
        <link rel="stylesheet" href="../resources/User/css/animate.css">
        <link rel="stylesheet" href="../resources/User/fonts/flaticon/font/flaticon.css">
        <link rel="stylesheet" href="../resources/User/css/fl-bigmug-line.css">


        <link rel="stylesheet" href="../resources/User/css/aos.css">

        <link rel="stylesheet" href="../resources/User/css/style.css">
        <script language="javascript">
            function editRecord(id) {
                var f = document.form;
                f.method = "post";
                f.action = 'PropertyDetails.jsp?id=' + id;
                f.submit();
            }
        </script>
    </head>
    <body>



        <div class="site-loader"></div>

        <jsp:include page="header.jsp"></jsp:include>

            <!--    <div class="slide-one-item home-slider owl-carousel">
            
                  <div class="site-blocks-cover" style="background-image: url(../Upload/Bckground2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
                  </div>  
            
                  <div class="site-blocks-cover" style="background-image: url(../Upload/background1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
                  </div>  
            
                <div class="site-blocks-cover" style="background-image: url(../Upload/building6.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
                  </div>
                
                <div class="site-blocks-cover" style="background-image: url(../Upload/building3.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
                  </div>
                </div>-->

            <div class="py-5">

                <div class="container">
                    <form class="row mb-5" method="post">

                        <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="select-wrap">
                                <span class="icon icon-arrow_drop_down"></span>
                            <%
                                ConnectionManager c = new ConnectionManager();
                                Connection con = c.GetConnection();
                                ResultSet resultset1 = null;
                                Statement statement1 = con.createStatement();

                                resultset1 = statement1.executeQuery("select DISTINCT(SuperBuildUpArea) from tblpropertydetails");
                            %>   <select name="Lot-Area" id="offer-types" class="form-control d-block rounded-0">
                                <option value="" disabled selected>BuildUp Area</option>
                                <%  while (resultset1.next()) {%>
                                <option><%= resultset1.getString(1)%></option>
                                <% } %>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                        <div class="select-wrap">
                            <span class="icon icon-arrow_drop_down"></span>
                            <select name="Property-Status" id="offer-types" class="form-control d-block rounded-0">
                                <option value="">Property Status</option>
                                <option value="Sale">Sale</option>
                                <option value="Rent">Rent</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                        <div class="select-wrap">
                                   <span class="icon icon-arrow_drop_down"></span>
           <%     
           ResultSet resultset =null;
       Statement statement = con.createStatement() ;

       resultset =statement.executeQuery("select DISTINCT(City) from tblpropertylocation") ;
%>   <select name="Location" id="offer-types" class="form-control d-block rounded-0">
        <option value="" disabled selected>City</option>
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(1)%></option>
        <% } %>
        </select>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                        <div class="select-wrap">
                            <span class="icon icon-arrow_drop_down"></span>
                            <select name="Availability" id="offer-types" class="form-control d-block rounded-0">
                                <option value="">Availability</option>
                                <option value="Under Construction">Under Construction</option>
                                <option value="Ready To Move">Ready To Move</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                        <div class="select-wrap">
                            <span class="icon icon-arrow_drop_down"></span>
                            <select name="Bedrooms" id="offer-types" class="form-control d-block rounded-0">
                                <option value="">Bedrooms</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5+">5+</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                        <div class="select-wrap">
                            <span class="icon icon-arrow_drop_down"></span>
                            <select name="Bathrooms" id="offer-types" class="form-control d-block rounded-0">
                                <option value="">Bathrooms</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5+">5+</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                        <div class="mb-4">
                            <!--              <div id="slider-range" class="border-primary"></div>
                                          <input type="text" name="text" id="amount" class="form-control border-0 pl-0 bg-white" disabled="" />-->
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                        <input type="submit" onclick="document.forms[0].action = 'searchedProperties.jsp'; return true;" class="btn btn-primary btn-block form-control-same-height rounded-0" value="Search">
                    </div>

                </form>

                <!--        <div class="row">
                          <div class="col-md-6 col-lg-4 mb-3 mb-lg-0">
                            <div class="feature d-flex align-items-start">
                              <span class="icon mr-3 flaticon-house"></span>
                              <div class="text">
                                <h2 class="mt-0">Wide Range of Properties</h2>
                                <p>We are providing a wide range of properties for interested and genuine buyers.</p>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-6 col-lg-4 mb-3 mb-lg-0">
                            <div class="feature d-flex align-items-start">
                              <span class="icon mr-3 flaticon-rent"></span>
                              <div class="text">
                                <h2 class="mt-0">Rent or Sell</h2>
                                <p>You can give your property as sell or rent.</p>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-6 col-lg-4 mb-3 mb-lg-0">
                            <div class="feature d-flex align-items-start">
                              <span class="icon mr-3 flaticon-location"></span>
                              <div class="text">
                                <h2 class="mt-0">Property Location</h2>
                                <p>You can contact dealers for further details.</p>
                              </div>
                            </div>
                          </div>
                        </div>-->
            </div>
        </div>
    </form>

    <div class="site-section site-section-sm bg-light">
        <div class="container">
            <div class="row mb-5">
                <div class="col-12">
                    <div class="site-section-title">
                        <h2>All Properties for You</h2>
                    </div>
                </div>
            </div>
            <form method="post" name="form">
                <div class="row mb-5">
                    <%
                        int regid = 0;
                        try {
                            if (session.getAttribute("CurrentUser") != null) {
                                RegisterUserBean currentuser = (RegisterUserBean) (session.getAttribute("CurrentUser"));
                                String user = currentuser.getUserName().toString();
                          
                                Statement st = con.createStatement();
                                ResultSet rs1 = st.executeQuery("select RegisterUserID from tblregisteruser where UserName='" + user + "'");
                                while (rs1.next()) {
                                    regid = Integer.parseInt(rs1.getString(1));

                                }

                            }

                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("SELECT tblsellorrentproperty.SellOrRentPropertyID,tblsellorrentproperty.Image1,tblpropertydetails.ExpectedPrice, tblpropertylocation.State,tblpropertylocation.City,tblpropertylocation.Address, tblpropertydetails.SuperBuildUpArea, tblpropertydetails.BedRooms, tblpropertydetails.BathRooms,tblpropertydetails.Balconies from tblsellorrentproperty INNER JOIN tbllistpropertyfor ON tbllistpropertyfor.ListPropertyForID=tblsellorrentproperty.ListPropertyForID  INNER JOIN tblpropertylocation ON tblpropertylocation.PropertyLocationID=tblsellorrentproperty.PropertyLocationID INNER JOIN tblpropertydetails ON tblpropertydetails.PropertyDetailsID=tblsellorrentproperty.PropertyDetailsID where tblsellorrentproperty.RegisterUserID!='" + regid + "' and tblsellorrentproperty.isDeleted='0';");
                    %><table border=1 align=center style="text-align: center">
                        <%while (rs.next()) {

                        %>
                        <div class="col-md-6 col-lg-4 mb-4">
                            <a  onclick="editRecord(<%=rs.getString(1)%>);" class="prop-entry d-block">
                                <figure>
                                    <img src="<%="../" + rs.getString(2)%>" alt="Image" width="350px" height="250px"  >
                                </figure>
                                <div class="prop-text">
                                    <div class="inner">
                                        <span class="price rounded">&#8377;<%out.print(rs.getString(3));%></span>
                                        <h3 class="title"><%out.print(rs.getString(4));%></h3>
                                        <h3 class="title"><%out.print(rs.getString(5));%></h3>
                                        <p class="location"><h2 class="title"><%out.print(rs.getString(6));%></h2></p>
                                    </div>
                                    <div class="prop-more-info">
                                        <div class="inner d-flex">
                                            <div class="col">
                                                <span>Area:</span>
                                                <strong><%out.print(rs.getString(7));%><sup>2</sup></strong>
                                            </div>
                                            <div class="col">
                                                <span>Beds:</span>
                                                <strong><%out.print(rs.getString(8));%></strong>
                                            </div>
                                            <div class="col">
                                                <span>Baths:</span>
                                                <strong><%out.print(rs.getString(9));%></strong>
                                            </div>
                                            <div class="col">
                                                <span>Balconies:</span>
                                                <strong><%out.print(rs.getString(10));%></strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <%
                        }%>
                    </table><br>
                    <%} catch (SQLException e) {
        out.print(e.getMessage());%><br><%
                        }
                    %>


                </div>
            </form>
            <!--        <div class="row">
                      <div class="col-md-12 text-center">
                        <div class="site-pagination">
                          <a href="#" class="active">1</a>
                          <a href="#">2</a>
                          <a href="#">3</a>
                          <a href="#">4</a>
                          <a href="#">5</a>
                          <span>...</span>
                          <a href="#">10</a>
                        </div>
                      </div>  
                    </div>-->

        </div>
    </div>



    <!--    <div class="site-section site-section-sm bg-primary">
          <div class="container">
            <div class="row align-items-center">
              <div class="col-md-8">
                <h2 class="text-white">Wide Range of Properties Just For You</h2>
                <p class="lead text-white-5">Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
              </div>
              <div class="col-md-4 text-center">
                <a href="#" class="btn btn-outline-primary btn-block py-3 btn-lg">See Properties</a>
              </div>
            </div>
          </div>
        </div>-->


    <jsp:include page="footer.jsp"></jsp:include>

</div>

<script src="../resources/User/js/jquery-3.3.1.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/jquery-migrate-3.0.1.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/jquery-ui.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/popper.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/bootstrap.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/owl.carousel.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/mediaelement-and-player.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/jquery.stellar.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/jquery.countdown.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/jquery.magnific-popup.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/bootstrap-datepicker.min.js" type="97d85ac250320df2daca8946-text/javascript"></script>
<script src="../resources/User/js/aos.js" type="97d85ac250320df2daca8946-text/javascript"></script>

<script src="../resources/User/js/main.js" type="97d85ac250320df2daca8946-text/javascript"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" type="97d85ac250320df2daca8946-text/javascript"></script>
<script type="97d85ac250320df2daca8946-text/javascript">
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>

<script src="../resources/User/ajax.cloudflare.com/cdn-cgi/scripts/a2bd7673/cloudflare-static/rocket-loader.min.js" data-cf-settings="97d85ac250320df2daca8946-|49" defer=""></script>
</form>
</form>
</form>
</body>

</html>
