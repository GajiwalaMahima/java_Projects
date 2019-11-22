<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500">
            <link rel="stylesheet" href="../resources/User/fonts/icomoon/style.css" />

            <link rel="stylesheet" href="../resources/User/css/bootstrap.min.css" />
            <link rel="stylesheet" href="../resources/User/css/magnific-popup.css" />
            <link rel="stylesheet" href="../resources/User/css/jquery-ui.css" />
            <link rel="stylesheet" href="../resources/User/css/owl.carousel.min.css" />
            <link rel="stylesheet" href="../resources/User/css/owl.theme.default.min.css" />
            <link rel="stylesheet" href="../resources/User/css/bootstrap-datepicker.css" />
            <link rel="stylesheet" href="../resources/User/css/mediaelementplayer.css" />
            <link rel="stylesheet" href="../resources/User/css/animate.css" />
            <link rel="stylesheet" href="../resources/User/fonts/flaticon/font/flaticon.css" />
            <link rel="stylesheet" href="../resources/User/css/fl-bigmug-line.css" />


            <link rel="stylesheet" href="../resources/User/css/aos.css" />

            <link rel="stylesheet" href="../resources/User/css/style.css" />
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
        <jsp:include page="header.jsp"></jsp:include>

            <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url('../resources/User/images/hero_bg_2.jpg');" data-stellar-background-ratio="0.5">
                <div class="container">
                    <div class="row align-items-center justify-content-center text-center">
                        <div class="col-md-10">
                            <h1 class="mb-2">Email</h1>
                            <div><a href="index.xhtml">Home</a> <span class="mx-2 text-white">&bullet;</span> <strong class="text-white">Email</strong></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="site-section">
                <div class="container">
                    <form action="sendMail.jsp">
                    <%
                        if (session.getAttribute("PropertyId") != null) {
                            // String parseStr = ((String) session.getAttribute("PropertyId"));
                            // int id = Integer.parseInt(parseStr);

                        }
                    %>
                    <label value="Note: If you are interested to buy this property, then you have to fill-up following form and our team send this information to the property owner through Email and the property owner will contact you through your contact number." style="color: black; font-size: large">Note: If you are interested to buy this property, then you have to fill-up following form and our team send this information to the property owner through Email and the property owner will contact you through your contact number.</label><br></br><br></br>
                    <label value="Note: Please fill in your details to be shared with this dealer only." style="color: black; font-size: large">Note: Please fill in your details to be shared with this dealer only.</label><br></br><br></br>
                    <div align="center">
                        <label value="BASIC INFORMATION" style="color: black; font-size: large"></label><br></br>
                    </div>
                    <table border='0'>
                        <tr>
                            <td style="width: 400px;">
                                Are you a property dealer
                            </td>
                            <td style="width: 500px;">
                                <input type="radio" name="dealer" value="Yes" /> Yes
                                <input type="radio" name="dealer" value="No" /> No
                            </td>
                        </tr>
                        <tr><td><br></td></tr>
                        <tr>
                            <td style="width: 400px;">
                                Name
                            </td>
                            <td style="width: 500px;">
                                <input name="name" type="text" style="width: 300px;" placeholder="Full Name" value="" class='form-control'></input>
                            </td>
                        </tr>
                           <tr><td><br></td></tr>
                        <tr>
                            <td style="width: 400px;">
                                Contact Number
                            </td>
                            <td style="width: 500px;">
                                <input name="contact" style="width: 300px;" placeholder="Contact Number" value="" class='form-control'></input>
                            </td>
                        </tr>
                           <tr><td><br></td></tr>
                        <tr>
                            <td style="width: 400px;">
                                Email-ID
                            </td>
                            <td style="width: 500px;">
                                <input name="email" style="width: 300px;" placeholder="example@domain.com" value="" class='form-control'></input>
                            </td>
                        </tr>
                                 <tr><td><br></td></tr>
                        <tr>
                            <td style="width: 500px;">
                                <input type="submit" value="SEND MAIL" onclick="document.forms[0].action = 'sendMail.jsp'; return true;" action="" class="btn btn-primary  py-2 px-4 rounded-0"></input>
                                <input type="button" value="Cancel" onclick="javascript: window.close();" class="btn btn-primary  py-2 px-4 rounded-0"></input>
                            </td>
                        </tr>
                                    <tr><td><br></td></tr>
                    </table>

                </form>
            </div>
        </div>


        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>