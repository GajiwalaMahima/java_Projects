

<%@page import="ManageData.ConnectionManager"%>
<%@page import="ManageData.RegisterUserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>HomeState</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"/> 
    <link rel="stylesheet" href="../resources/User/fonts/icomoon/style.css"/>

    <link rel="stylesheet" href="../resources/User/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../resources/User/css/magnific-popup.css"/>
    <link rel="stylesheet" href="../resources/User/css/jquery-ui.css"/>
    <link rel="stylesheet" href="../resources/User/css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="../resources/User/css/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="../resources/User/css/bootstrap-datepicker.css"/>
    <link rel="stylesheet" href="../resources/User/css/mediaelementplayer.css"/>
    <link rel="stylesheet" href="../resources/User/css/animate.css"/>
    <link rel="stylesheet" href="../resources/User/fonts/flaticon/font/flaticon.css"/>
    <link rel="stylesheet" href="../resources/User/css/fl-bigmug-line.css"/>
    
  
    <link rel="stylesheet" href="../resources/User/css/aos.css"/>

    <link rel="stylesheet" href="../resources/User/css/style.css"/>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Main Styles -->
    <link rel="stylesheet" href="../resources/User/assets/styles/style.min.css"/>

    <!-- mCustomScrollbar -->
    <link rel="stylesheet" href="../resources/User/assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.min.css"/>

    <!-- Waves Effect -->
    <link rel="stylesheet" href="../resources/User/assets/plugin/waves/waves.min.css"/>

    <!-- Dropify -->
    <link rel="stylesheet" href="../resources/User/assets/plugin/dropify/css/dropify.min.css"/>

    <!-- Sweet Alert -->
    <link rel="stylesheet" href="../resources/User/assets/plugin/sweet-alert/sweetalert.css"/>

    <!-- Form Wizard -->
    <link rel="stylesheet" href="../resources/User/assets/plugin/form-wizard/prettify.css"/>

    <!-- Color Picker -->
    <link rel="stylesheet" href="../resources/User/assets/color-switcher/color-switcher.min.css"/>
    <link rel="stylesheet" href="../resources/User/style.css" />

    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="../resources/ListProperty/css/style.css "/>
    <link rel="stylesheet" type="text/css" id="style_sheet" href="../resources/ListProperty/css/skins/default.css"/>
    
    <script language="javascript"  type="text/javascript">
        function editRecord(sellOrRentPropertyID){
            if(!confirm("Are you sure want to delete?"))
                return;
            
            var hdn = document.getElementById("hdnDeletedPropertyID");
            hdn.value = sellOrRentPropertyID;
        }
    </script>
</head>
<body>
    
<div class="site-loader"></div>
<jsp:include page="header.jsp"></jsp:include>
  
<div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(../Upload/popular-places-3.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
   <div class="container">
     <div class="row align-items-center justify-content-center text-center">
       <div class="col-md-10">
         <h1 class="mb-2">
             <label value="Your properties" style="color: white"></label>
         </h1>
       </div>
     </div>
   </div>
 </div>

<div class="site-section site-section-sm bg-light">
  <div class="container">
    <div class="row mb-5">
      <div class="col-12">
        <div class="site-section-title">
          <h2></h2>
        </div>
      </div>
    </div>
      <br>
      <br>
      <form method="post" action="../DeleteUserProperty">
          <input type="hidden" id="hdnDeletedPropertyID" name="deletedProperty" value="">
        <div class="row align-items-center justify-content-center text-center" style="width: 100%">
        <div class="Properties-details-section sidebar-widget" style="width: 100%">
        <div class="properties-comments mb-40" style="width: 100%">
            <!-- Comments section start -->
            <div class="comments-section">
                <!-- Main Title 2 -->
                <div class="main-title-2" style="font-size: larger">
                    <h1><span>Properties </span> Section</h1>
                </div>   
        <%
            ConnectionManager c = new ConnectionManager();
                                Connection con = c.GetConnection();
        int regid=0;      
        try
        {
            if(session.getAttribute("CurrentUser")!= null)
            {
                RegisterUserBean currentuser = (RegisterUserBean)(session.getAttribute("CurrentUser"));
                String user =currentuser.getUserName().toString();
               
                Statement st=con.createStatement();
                ResultSet rs1=st.executeQuery("select RegisterUserID from tblregisteruser where UserName='"+user+"' ");
                while(rs1.next()){
                    regid = Integer.parseInt(rs1.getString(1));
                }
            }

            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("SELECT tblsellorrentproperty.SellOrRentPropertyID,tblsellorrentproperty.Image1, tblsellorrentproperty.Image2, tblsellorrentproperty.Image3,tblpropertydetails.ExpectedPrice, tblpropertylocation.State,tblpropertylocation.City,tblpropertylocation.Address, tblpropertydetails.SuperBuildUpArea, tblpropertydetails.BedRooms, tblpropertydetails.BathRooms,tblpropertydetails.Balconies, tblpropertiesbelongstotype.PropertiesBelongsToTypeName from tblsellorrentproperty INNER JOIN tbllistpropertyfor ON tbllistpropertyfor.ListPropertyForID=tblsellorrentproperty.ListPropertyForID  INNER JOIN tblpropertylocation ON tblpropertylocation.PropertyLocationID=tblsellorrentproperty.PropertyLocationID INNER JOIN tblpropertydetails ON tblpropertydetails.PropertyDetailsID=tblsellorrentproperty.PropertyDetailsID INNER JOIN tblregisteruser ON tblregisteruser.RegisterUserID=tblsellorrentproperty.RegisterUserID INNER JOIN tblpropertiesbelongstotype ON tblpropertiesbelongstotype.PropertiesBelongsToTypeID= tblsellorrentproperty.PropertiesBelongsToTypeID where tblregisteruser.RegisterUserID='"+regid+"' and tblsellorrentproperty.isDeleted='0';");
        %>
        <%while(rs.next())
        {
        %>
        <ul>
            <li>
                <div>
                    <div align="left">
                        <img src="<%="../"+rs.getString(2) %>" style="height: 300px; width: 300px"/>
                        <img src="<%="../"+rs.getString(3) %>" style="height: 300px; width: 300px"/>
                        <img src="<%="../"+rs.getString(4) %>" style="height: 300px; width: 300px"/>
                        <div class="comment-meta-reply">
                            <input type="submit" onclick="editRecord(<%=rs.getString(1)%>)" class="prop-entry d-block" value="Delete property" style="background-color: greenyellow; color: white" />
                        </div>
                    </div>
                    <div>
                        <div align="left">
                            <div style="align-content: flex-start">
                                <h1 class="mb-2">
                                    <label><%out.print(rs.getString(5));%> BHK <%out.print(rs.getString(13));%></label>
                                </h1>
                                <p class="mb-5"><strong class="h2 text-success font-weight-bold"><label><%out.print(rs.getString(3));%></label></strong></p>
                                <h3 class="mb-2">
                                <label style="color: black"><%out.print(rs.getString(8));%></label>
                                </h3>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </li>
        </ul>
        <%
    }%>
    <br>
<%}
catch(SQLException e){
    out.print(e.getMessage());%><br><%
}
%>

                    </div>
                </div>
            </div>
        </div>
    </form>

    </div>
</div>
    
<jsp:include page="footer.jsp"></jsp:include>
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

<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" type="97d85ac250320df2daca8946-text/javascript"></script>
<script type="97d85ac250320df2daca8946-text/javascript">
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

<script src="../resources/User/ajax.cloudflare.com/cdn-cgi/scripts/a2bd7673/cloudflare-static/rocket-loader.min.js" data-cf-settings="97d85ac250320df2daca8946-|49" defer=""></script>

<script src="../resources/User/assets/scripts/jquery.min.js"></script>
<script src="../resources/User/assets/scripts/modernizr.min.js"></script>
<script src="../resources/User/assets/plugin/bootstrap/js/bootstrap.min.js"></script>
<script src="../resources/User/assets/plugin/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="../resources/User/assets/plugin/nprogress/nprogress.js"></script>
<script src="../resources/User/assets/plugin/sweet-alert/sweetalert.min.js"></script>
<script src="../resources/User/assets/plugin/waves/waves.min.js"></script>
<!-- Full Screen Plugin -->
<script src="../resources/User/assets/plugin/fullscreen/jquery.fullscreen-min.js"></script>

<!-- Dropify -->
<script src="../resources/User/assets/plugin/dropify/js/dropify.min.js"></script>
<script src="../resources/User/assets/scripts/fileUpload.demo.min.js"></script>

<!-- Form Wizard -->
<script src="../resources/User/assets/plugin/form-wizard/prettify.js"></script>
<script src="../resources/User/assets/plugin/form-wizard/jquery.bootstrap.wizard.min.js"></script>
<script src="../resources/User/assets/plugin/jquery-validation/jquery.validate.min.js"></script>
<script src="../resources/User/assets/scripts/form.wizard.init.min.js"></script>

<script src="../resources/User/assets/scripts/main.min.js"></script>
<script src="../resources/User/assets/color-switcher/color-switcher.min.js"></script>
<script src="../resources/User/ajax.cloudflare.com/cdn-cgi/scripts/a2bd7673/cloudflare-static/rocket-loader.min.js" data-cf-settings="97d85ac250320df2daca8946-|49" defer=""></script>
  </form>
  </form>
</form>
</body>

</html>
