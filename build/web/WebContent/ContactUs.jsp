

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
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='PropertyDetails.jsp?id='+id;
    f.submit();
}
</script>
</head>
    <body>
        <form>
        <div class="site-loader"></div>

            <jsp:include page="header.jsp"></jsp:include>
       
            <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(../resources/User/images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
                <div class="container">
                  <div class="row align-items-center justify-content-center text-center">
                    <div class="col-md-10">
                      <h1 class="mb-2">Contact Us</h1>
                      <div><a href="index.xhtml">Home</a> <span class="mx-2 text-white">&bullet;</span> <strong class="text-white">Contact</strong></div>
                    </div>
                  </div>
                </div>
            </div>
    
    <div class="site-section">
      <div class="container">
        <div class="row">
       <form>
          <div class="col-md-12 col-lg-8 mb-5">
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                    <label class="font-weight-bold" style="font-weight: bold">Full Name</label>
                    <input type="text" name="txtFullName" class="form-control" style="width: 500px;" placeholder="Full Name" /> 
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                    <label class="font-weight-bold" style="font-weight: bold">Email</label>
                    <input type="text" name="txtEmail" class="form-control" style="width: 500px;" placeholder="Email ID" /> 
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                    <label class="font-weight-bold" style="font-weight: bold">Subject</label>
                    <input type="text" name="txtSubject" class="form-control" style="width: 500px;" placeholder="Enter Subject.." />
                    
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                    <label class="font-weight-bold" style="font-weight: bold">Message</label>
                    <textarea type="text" name="txtMessage" class="form-control" placeholder="Say hello to us.." cols="30" rows="5" style="width: 500px;"></textarea>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                    <button name="btnSendFeedback" style="align-items: flex-start" class="btn btn-primary  py-2 px-4 rounded-0" onClick="">Send Message</button>
                </div>
              </div>
          </div>
        </form>
            
          <div class="col-lg-4">
            <div class="p-4 mb-3 bg-white">
              <h3 class="h6 text-black mb-3 text-uppercase">Contact Info</h3>
              <p class="mb-0 font-weight-bold">Address</p>
              <p class="mb-4">206, Aashirwad Awas Apt., Ichha Doshi Vadi, Salabatpura, Surat, India</p>

              <p class="mb-0 font-weight-bold">Phone</p>
              <p class="mb-4"><a href="#">+91 957 444 5310</a></p>

              <p class="mb-0 font-weight-bold">Email Address</p>
              <p class="mb-0"><a href="#"><span class="text-black fl-bigmug-line-email64"></span> <span class="d-none d-md-inline-block ml-2"><span class="d-none d-md-inline-block ml-2">dishamehta218@gmail.com</span></span></a></p>

            </div>
            
          </div>
        </div>
      </div>
    </div>


    
    <div class="site-section bg-light">
    <div class="container">
      <div class="row mb-5 justify-content-center">
        <div class="col-md-7">
          <div class="site-section-title text-center">
            <h2>Testimonies</h2>
          </div>
        </div>
      </div>
      <div class="row block-13">

        <div class="nonloop-block-13 owl-carousel">

          <div class="slide-item">
            <div class="team-member text-center">
                <img src="../Upload/Admin1.jpg" alt="Image" class="img-fluid mb-4 w-50 rounded-circle mx-auto"/>
              <div class="text p-3">
                <h2 class="mb-2 font-weight-light text-black h4">Anisha Gaywala</h2>
                <span class="d-block mb-3 text-white-opacity-05">&ldquo; Developer &rdquo;</span>
                <p class="mb-5"></p>
                
              </div>
            </div>
          </div>

          <div class="slide-item">
            <div class="team-member text-center">
                <img src="../Upload/Admin2.jpg" alt="Image" class="img-fluid mb-4 w-50 rounded-circle mx-auto"/>
              <div class="text p-3">
                <h2 class="mb-2 font-weight-light text-black h4">Disha Mehta</h2>
                <span class="d-block mb-3 text-white-opacity-05">&ldquo; Guest &rdquo;</span>
                <p class="mb-5"></p>
              </div>
            </div>
          </div>

          <div class="slide-item">
            <div class="team-member text-center">
                <img src="../Upload/Admin3.jpg" alt="Image" class="img-fluid mb-4 w-50 rounded-circle mx-auto"/>
              <div class="text p-3">
                <h2 class="mb-2 font-weight-light text-black h4">Neel Gaywala</h2>
                <span class="d-block mb-3 text-white-opacity-05">&ldquo; Partner &rdquo;</span>
                <p class="mb-5"></p>
                
              </div>
            </div>
          </div>
        </div>

        </div>
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
    
        </form>
    </body>
</html>
