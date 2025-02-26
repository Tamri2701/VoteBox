<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="voting.Index" %>


<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>VoteBoxhomepage</title>
 
     <link href="css/style-starter.css" rel="stylesheet" />
</head>
<body>
    <header id="site-header" class="fixed-top">
         <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light stroke py-lg-0">
                <h1><a class="navbar-brand pe-xl-5 pe-lg-4" href="Index.aspx">
                        Vote<span class="sublog">Box.</span>
                    </a></h1>
                <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-lg-auto my-2 my-lg-0 navbar-nav-scroll">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Index.aspx">Home</a>
                        </li>
                       
                        <li class="nav-item">
                            <a class="nav-link" href="Services.aspx">Services</a>
                        </li>
                       
                        <li class="nav-item">
                            <a class="nav-link" href="Contact.aspx">Contact</a>
                        </li>

                    </ul>
                    <ul class="navbar-nav search-right mt-lg-0 mt-2">
                        <li class="nav-item mr-2" title="Search"><a href="#search" class="search-search">
                                <span class="fas fa-search" aria-hidden="true"></span></a></li>
                  
                        <li class="nav-item mx-lg-4"><a href="login.aspx" class="phone-btn btn-white d-none d-lg-block btn-style ms-2"><span class="fas fa-user me-2" aria-hidden="true"></span> Admin Login</a></li>

                    </ul>

                    
                    <div id="search" class="w3lpop-overlay">
                        <div class="w3lpopup">
                            <form action="#formsearch" method="GET" class="d-flex">
                                <input type="search" placeholder="Search.." name="search" required="required" />
                                <button type="submit"><span class="fas fa-search"></span></button>
                                <a class="close" href="#formsearch">&times;</a>
                            </form>
                        </div>
                    </div>
                    
                </div>
            <div class="mobile-position">
   
        <div class="theme-switch-wrapper">
           
                 <label class="theme-switch" for="checkbox" />
                                <input type="checkbox" id="checkbox" />
                                <div class="mode-container">
                                    <i class="gg-sun"></i>
                                    <i class="gg-moon"></i>
                                </div>
                            
                        </div>

        </div>
    </nav>
</div>

       
    </header>
    

    <section class="w3l-main-slider banner-slider" id="home">
        <div class="owl-one owl-carousel owl-theme">
            <div class="item">
                <div class="slider-info banner-view banner-top1">
                    <div class="container">
                        <div class="banner-info">
                            <h3>Your Vote <span>Your Right</span></h3>
                            <div class="banner-info-top">
                                <p> </p>
                                <a href="About.aspx" class="btn btn-style btn-outline-light mt-sm-5 mt-4">Read More <span class="fas fa-angle-double-right ms-2"></span> </a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </section>

    <div class="w3l-3-grids" id="grids-3">
        <div class="container-fluid mx-lg-0">
            <div class="row pt-sm-0 pt-5">
                <div class="col-lg-4 col-sm-6 mt-sm-0 m px-md-0 w3-gridhny-1 position-relative">
                    <div class="grids3-info">
                        <a href="#" class="d-block zoom"><img src="images/g1.jpg" alt="" class="img-fluid news-image"></a>
                        <div class="w3-grids3-info">
                            <h6><a href="#category" class="category d-block"> Empowerment</a></h6>
                            <h4><a href="#">Where every vote fuels the  <span>flame of change.</span></a></h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 mt-sm-0 px-md-0 w3-gridhny-1 position-relative">
                    <div class="grids3-info">
                        <a href="#blog" class="d-block zoom"><img src="images/g2.jpg" alt="" class="img-fluid news-image"></a>
                        <div class="w3-grids3-info second">
                            <h6><a href="#category" class="category d-block">Democracy</a></h6>
                            <h4><a href="#"> Each ballot, a brushstroke on the canvas of our<span>collective future.</span></a></h4>

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 mt-lg-0 px-md-0 w3-gridhny-1 position-relative">
                    <div class="grids3-info">
                        <a href="#blog" class="d-block zoom"><img src="images/g3.jpg" alt="" class="img-fluid news-image"></a>
                        <div class="w3-grids3-info">
                            <h6><a href="#category" class="category d-block">Participation</a></h6>
                            <h4><a href="#">Uniting voices,<span>shaping destinies.</span></a></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    /s
    <section class="w3l-index2" id="about">
               <div class="midd-w3 py-5">
            <div class="container py-md-5 py-3">
                <!--/row-1-->
                <div class="row">
                    <div class="col-lg-6">
                        <div class="w3shape position-relative">
                            <img src="images/ab6.jpg" alt="" class="radius-image img-fluid">
                        </div>
                    </div>
                    <div class="col-lg-6 mt-lg-0 mt-md-5 mt-4 align-self ps-lg-5">
                        <div class="title-content text-left">
                            <h6 class="title-subhny mb-2"><span>Our Story</span></h6>
                            <h3 class="title-w3l">Helping business become what they
                                <span class="span-bold">can be</span>
                            </h3>
                        </div>
                        <p class="mt-md-4 mt-3">Once upon a time in the bustling city of mumbai, there lived a young BCA student named Tania, she was passionate about technology and democracy, and she dreamed of finding a way to merge the two to make a positive impact on society. With this vision in mind, she embarked on a journey to develop a revolutionary website dedicated to online voting.

Driven by her determination and fueled by countless cups of coffee, Tania spent long hours coding and designing the platform.</p>
                        <div class="w3l-two-buttons">
                            <a href="About.aspx" class="btn btn-style btn-primary mt-lg-5 mt-4">Read More <span class="fas fa-angle-double-right ms-2"></span></a>
                            <a href="#view" class="btn btn-outline-primary btn-style mt-lg-5 mt-4 ms-2"> Contact Us<span class="fas fa-angle-double-right ms-2"></span></a>
                        </div>
                    </div>
                </div>
                

            </div>
        </div>
    </section>
    

    <section class="w3l-video-sec" id="video">
      <div class="container">
            <div class="w3l-index5 py-5" >
                <div class="history-info align-self text-center py-5 my-lg-5">
                    <div class="position-relative py-5 my-lg-5">
                        <a href="#small-dialog1" class="popup-with-zoom-anim play-view text-center position-absolute">
                            <span class="video-play-icon">
                                <span class="fa fa-play"></span>
                            </span>
                        </a>
                 
                        <div id="small-dialog1" class="zoom-anim-dialog mfp-hide">
                            <iframe src="https://player.vimeo.com/video/124801644" frameborder="0" allow="autoplay; fullscreen" allowfullscreen=""></iframe>
                        </div>
						                        
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="w3l-grids-3 home-page-gds py-5">
    <div class="container py-md-5 py-3">
            <div class="header-sec text-center pt-lg-5 mt-lg-5">
                <h3 class="title-w3l two mb-4 mt-lg-5">We are a young and creative company & we <br> offer you
                    <span class="span-bold">fresh ideas.</span>
                </h3>
            </div>
            <div class="row bottom_grids text-left">
                <div class="col-lg-3 col-md-6 mt-5">
                    <div class="grid-block text-center">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-coins" aria-hidden="true"></span>
                            <h4 class="my-3">Subscription Packages</h4>
                            <p class="">VoteBox has all types of packages to provide you.. </p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-5">
                    <div class="grid-block text-center">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-chart-pie" aria-hidden="true"></span>
                            <h4 class="my-3">Result Updates</h4>
                            <p class="">We provide you the results updates in the form of graphical format just for best decison making. </p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-5">
                    <div class="grid-block text-center">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-bullhorn" aria-hidden="true"></span>
                            <h4 class="my-3">Layouts</h4>

                            <p class="">VoteBox provide you mutliple layouts for conducting voting. </p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-5">
                    <div class="grid-block text-center">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-headset" aria-hidden="true"></span>
                            <h4 class="my-3">24/7 Support</h4>
                            <p class="">We the VoteBox members are there to support 24/7 hr. </p>
                        </a>
                    </div>
                </div>

            </div>
        </div>
    </section>

 

    <section class="w3l-services2" id="services">
      <div id="cwp23-block" class="py-5">
            <div class="container py-lg-5">
                <div class="row cwp23-content mt-lg-5 mt-4">
                    <div class="col-lg-6 cwp23-img">
                        <h6 class="title-subhny mb-2"><span>What We Do?</span></h6>
                        <h3 class="title-w3l mb-4">The service we offer is specifically designed to meet <br>
                            <span class="span-bold">your needs.</span>
                        </h3>
                        <p class="mt-4">A voting website serves as a crucial hub in the electoral process, fulfilling a multitude of needs for both voters and election officials alike. Firstly, it acts as an accessible platform where voters can conveniently access information regarding candidates, ballot measures, and voting procedures from the comfort of their homes. Secondly, the website facilitates voter registration, simplifying the process and making it more accessible to a broader population. Furthermore, it disseminates vital information such as polling locations, voting hours, and any updates to election procedures, ensuring voters are well-prepared for election day. 

                        </p>

                        <div class="w3l-button mt-lg-5 mt-4">
                            <a href="Services.aspx" class="btn btn-style btn-primary mt-2">Read More <span class="fas fa-angle-double-right ms-2"></span></a>
                        </div>
                    </div>
                    <div class="col-lg-6 cwp23-text mt-lg-0 mt-5 ps-lg-5">
                        <div class="cwp23-text-cols">
                            <div class="column">
                                <a href="#"><img src="images/g2.jpg" alt="" class="radius-image img-fluid"></a>
                            </div>
                            <div class="column">
                                <a href="#"><img src="images/g3.jpg" alt="" class="radius-image img-fluid"></a>
                            </div>
                            <div class="column">
                                <a href="#"><img src="images/g4.jpg" alt="" class="radius-image img-fluid"></a>
                            </div>
                            <div class="column">
                                <a href="#"><img src="images/g5.jpg" alt="" class="radius-image img-fluid"></a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  

    <section class="w3l-project-main pb-5">
        <div class="container pb-md-5 py-2">
            <div class="w3l-project p-md-5 p-4 px-4">
                <div class="row py-lg-4 px-lg-2 align-items-center">
                    <div class="col-lg-8 w3l-project-right">
                        <div class="bottom-info">
                            <div class="header-section pr-lg-5">
                                <h3 class="title-w3l two">Request Free Consultation <br>and <span class="span-bold">Lets Do It!</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 w3l-project-left mt-lg-0 mt-4">
                        <a href="#" class="btn btn-secondary btn-style"> Request Now <span class="fas fa-angle-double-right ms-2"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//w3l-project-->
    



 

    <section class="w3l-clients pb-5" id="clients">
       <div class="cusrtomer-layout py-5 pb-0">
            <div class="container py-lg-4 py-md-3 ">
                <div class="heading text-center mx-auto">
                    <h6 class="title-subhny mb-2"><span>Testimonials</span></h6>
                    <h3 class="title-w3l mb-5">Happy Clients
                        <span class="span-bold">& Feedbacks</span>
                    </h3>
                </div>
                <!-- /grids -->
                <div class="testimonial-width">
                    <div class="row">
                        <div class="col-lg-6 item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <blockquote>
                                        <q><i class="fas fa-quote-left"></i> 
                                            "I just had to share how impressed I am with the voting website. It's so well-designed and organized, making it incredibly easy to navigate. Plus, the ability to vote absentee online saved me so much time and hassle. Kudos to the team behind this fantastic platform – you've earned my trust and loyalty!"
                                        </q>
                                    </blockquote>
                                    <div class="testi-des">
                                        <div class="test-img"><img src="images/team1.jpg" class="img-fluid" alt="client-img">
                                        </div>
                                        <div class="peopl align-self">
                                            <h3>Amrit yadav</h3>
                                            <p class="indentity">Ceo of dashCity</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 item">
                            <div class="testimonial-content">
                                <div class="testimonial">
                                    <blockquote>
                                        <q><i class="fas fa-quote-left"></i>  "I can't say enough good things about the voting website. It kept me informed every step of the way, from finding my polling place to tracking election results. It's like having a personal assistant guiding you through the entire voting process. I'll definitely be using it for every election from now on!"</q>
                                    </blockquote>
                                    <div class="testi-des">
                                        <div class="test-img"><img src="images/team2.jpg" class="img-fluid" alt="client-img">
                                        </div>
                                        <div class="peopl align-self">
                                            <h3>juli sakura</h3>
                                            <p class="indentity">Manager in sunburn</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <!-- /grids -->
        </div>
        <!-- //grids -->
    </section>

    <footer class="w3l-footer-29-main">
       <div class="footer-29 py-5">
            <div class="container py-lg-4">
                <div class="row align-items-center mb-3">
                    <h2 class="sign-left col-lg-7"> Join our community by using our services and grow your business. </h2>
                    <div class="footerw3-btn col-lg-5 ps-lg-5"><a href="#" class="btn btn-secondary btn-style"> Try it For Free <span class="fas fa-angle-double-right ms-2"></span></a></div>
                </div>

                <div class="row footer-top-29 mt-md-5 mt-4">
                    <div class="col-lg-4 col-md-6 footer-list-29 footer-1 pe-lg-5">
                        <h6 class="footer-title-29">About</h6>
                        <div class="footer-listw3-grids">
                            <p class="pe-lg-4"> </p>
                            <div class="w3pt-call-box mt-4">
                                <div class="w3pt-call-info">
                                    <h5>Get Us Support</h5>

                                    <h5> <a href="tel:+1(21) 234 557 456">
                                        <i class="fas fa-phone-alt me-1"></i> (+91) 234 557 456</a></h5>
                                    <div>
                                    <h5><a href="tel:+1(21) 234 4568">
                                        <i class="far fa-envelope me-1"></i> </a></h5>
                                      
                                        <a href="mailto:support@mail.com" class="mail"> support@mail.com</a>
                                        </div>

                                </div>

                            </div>
                        </div>

                    </div>
                    <div class="col-lg-2 col-md-6 footer-list-29 footer-3 mt-lg-0 mt-5">
                        <h6 class="footer-title-29">Links</h6>
                        <div class="footer-listw3-grids">
                            <ul class="footer-listw3">
                                <li><a href="#us">About Us</a></li>
                                <li><a href="#team">Our Team</a></li>
                                <li><a href="#pro">Projects</a></li>
                                <li><a href="#career">Careers</a></li>
                                <li><a href="#terms">Terms of Use</a></li>
                                <li><a href="#tips">Privacy Policy</a></li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 footer-list-29 footer-3 mt-lg-0 mt-5">
                        <h6 class="footer-title-29">Services</h6>
                        <div class="footer-listw3-grids">
                            <ul class="footer-listw3">
                                <li><a href="#lift">Secure services</a></li>
                                <li><a href="#cardio">Digital arrange</a></li>
                                <li><a href="#fit">Content strategy</a></li>
                                <li><a href="#tips">Processing services</a></li>
                                <li><a href="#tips">Web hosting</a></li>
                                <li><a href="#tips">Page optimization</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 footer-list-29 footer-4 mt-lg-0 mt-5 ps-lg-5">
                        <h6 class="footer-title-29">Keep Connected</h6>
                        <p>Get Updates By Subscribe Our Weekly Newsletter</p>

                        <form action="#" class="subscribe" method="post">
                            <input type="email" name="email" placeholder="Your Email Address" required="">
                            <button><span class="fas fa-paper-plane"></span></button>
                        </form>
                        <div class="main-social-footer-29 mt-4">
                            <a href="#facebook" class="facebook"><span class="fab fa-facebook-f"></span></a>
                            <a href="#twitter" class="twitter"><span class="fab fa-twitter"></span></a>
                            <a href="#instagram" class="instagram"><span class="fab fa-instagram"></span></a>

                            <a href="#linkd" class="linkd"><span class="fab fa-linkedin-in"></span></a>
                        </div>
                    </div>
                </div>
                <div class="bottom-copies text-center">
                    <p class="copy-footer-29">© 2024 VoteBox. All rights reserved. Design by
                        <a> Tania</a>
                    </p>
                </div>
            </div>
        </div>

        <button onclick="topFunction()" id="movetop" title="Go to top">
            <span class="fa fa-angle-up"></span>
        </button>
        <script>
                
            window.onscroll = function () {
                scrollFunction()
            };

            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    document.getElementById("movetop").style.display = "block";
                } else {
                    document.getElementById("movetop").style.display = "none";
                }
            }

            function topFunction() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }

        </script>
        <!-- //move top -->

    </footer>
   
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/theme-change.js"></script>
    <script>
    $(window).on("scroll", function() {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#site-header").addClass("nav-fixed");
            } else {
                $("#site-header").removeClass("nav-fixed");
            }
        });

        
        $(".navbar-toggler").on("click", function() {
            $("header").toggleClass("active");
        });
        $(document).on("ready", function() {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
            $(window).on("resize", function() {
                if ($(window).width() > 991) {
                    $("header").removeClass("active");
                }
            });
        });

    </script>
   


    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });

    </script>
   
    <script src="js/bootstrap.min.js"></script>
    

    
</body>
</html>

