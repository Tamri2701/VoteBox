<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="voting.Services" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title> </title>
    <link href="//fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300;400;500;600;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/style-starter.css" />
</head>
<body>
    <header id="site-header" class="fixed-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light stroke py-lg-0">
                <h1>
                    <a class="navbar-brand pe-xl-5 pe-lg-4" href="Index.aspx">
                        Vote<span class="sublog">Box.</span>
                    </a>
                </h1>
                <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-lg-auto my-2 my-lg-0 navbar-nav-scroll">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="Index.aspx">Home</a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link active" href="Services.aspx">Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Contact.aspx">Contact</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav search-right mt-lg-0 mt-2">
                        <li class="nav-item mr-2" title="Search">
                            <a href="#search" class="search-search">
                                <span class="fas fa-search" aria-hidden="true"></span>
                            </a>
                        </li>
                        <li class="nav-item mx-lg-4">
                            <a href="#" class="phone-btn btn-white d-none d-lg-block btn-style ms-2">
                                <span class="fas fa-user me-2" aria-hidden="true"></span> Admin Login
                            </a>
                        </li>
                    </ul>
                    </div>
                    <div id="search" class="w3lpop-overlay">
                        <div class="w3lpopup">
                            <form action="#formsearch" method="GET" class="d-flex">
                                <input type="search" placeholder="Search.." name="search" required="required" autofocus />
                                <button type="submit"><span class="fas fa-search"></span></button>
                                <a class="close" href="#formsearch">&times;</a>
                            </form>
                        </div>
                    </div>
                    <div class="mobile-position">
                        <nav class="navigation">
                        <div class="theme-switch-wrapper">
                            <label class="theme-switch" for="checkbox" />
                                <input type="checkbox" id="checkbox" />
                                <div class="mode-container">
                                    <i class="gg-sun"></i>
                                    <i class="gg-moon"></i>
                                </div>
                            
                        </div>
                    </nav>
                    </div>
               
            </nav>
            </div>
    
    </header>
    <section class="w3l-about-breadcrumb">
        
        <div class="breadcrumb-bg breadcrumb-bg-about py-5">
            <div class="container py-lg-5 py-md-4">
                <div class="w3breadcrumb-gids text-center pt-5">
                    <div class="w3breadcrumb-right">
                        <ul class="breadcrumbs-custom-path">
                            <li><a href="Index.aspx">Home</a></li>
                            <li class="active"><span class="fas fa-angle-double-right mx-2"></span> Services</li>
                        </ul>
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
                        <p class="mt-4">The website provides an intuitive interface for users to select their preferred options or candidates and submit their votes securely. Behind the scenes, robust security measures are implemented to safeguard the integrity of the voting process, preventing unauthorized access and ensuring the confidentiality and accuracy of votes. After the voting period concludes, the website tallies the votes, calculates results, and presents them to users transparently. Throughout the process, effective communication channels are maintained to keep users informed about upcoming elections, results, and any relevant updates. Additionally, feedback mechanisms allow users to voice their opinions and concerns, contributing to the continuous improvement of the voting experience.

                        </p>

                        <div class="w3l-button mt-lg-5 mt-4">
                            <a href="services.html" class="btn btn-style btn-primary mt-2">Read More <span class="fas fa-angle-double-right ms-2"></span></a>
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
  
    <section class="w3l-grids-3 py-5">
        <div class="container py-md-5 py-3">
            <div class="row bottom-ab-grids align-items-center">
                <div class="header-sec text-center">
                    <h6 class="title-subhny mb-2"><span>How We Do It?</span></h6>
                    <h3 class="title-w3l mb-3">We Are A Young And Creative Company & We<br>
                        Offer You
                        <span class="span-bold">Fresh Ideas.</span>
                    </h3>

                </div>

            </div>
            <div class="row bottom_grids pt-md-3 text-left">
                <div class="col-lg-4 col-md-6 mt-5">
                    <div class="grid-block">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-file-alt" aria-hidden="true"></span>
                            <h4 class="my-3">Concept</h4>
                            <p class=""> </p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-5">
                    <div class="grid-block">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-holly-berry" aria-hidden="true"></span>
                            <h4 class="my-3">Prepare</h4>
                            <p class=""> </p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-5">
                    <div class="grid-block">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-american-sign-language-interpreting" aria-hidden="true"></span>
                            <h4 class="my-3">Retouch</h4>

                            <p class=""> </p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-5">
                    <div class="grid-block">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fa fa-cubes" aria-hidden="true"></span>
                            <h4 class="my-3">Finalize</h4>
                            <p class=""> </p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-5">
                    <div class="grid-block">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-chart-pie" aria-hidden="true"></span>
                            <h4 class="my-3">Result Updates</h4>
                            <p class=""> </p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-5">
                    <div class="grid-block">
                        <a href="#blog" class="d-block p-lg-4 p-3">
                            <span class="fas fa-headset" aria-hidden="true"></span>
                            <h4 class="my-3">24/7 Support</h4>
                            <p class=""> </p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>   
    <section class="w3l-services3">
        <div class="new-block">
            <div class="container py-5">
                <div class="middle-section py-lg-5 py-4">
                    <div class="section-width">
                        <h6 class="title-subhny mb-2"><span>Why Choose Us</span></h6>
                        <h3 class="title-w3l two mb-4">Get in touch with us and we’ll help
                            <span class="span-bold">your business.</span>
                        </h3>
                    </div>
                    <div class="link-list-menu">
                        <p class="">
                        <div class="w3l-two-buttons">
  
                            <a href="About.aspx" class="btn btn-style btn-secondary mt-lg-5 mt-4 ms-sm-3">Read More <span class="fas fa-angle-double-right ml-2"></span> </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                            <p class="pe-lg-4"></p>
                            <div class="w3pt-call-box mt-4">
                                <div class="w3pt-call-info">
                                    <h5>Get Us Support</h5>

                                    <h5><a href="tel:+1(21) 234 557 456"><i class="fas fa-phone-alt me-1"></i> +1(21) 234 557 456</a></h5>
                                    <h5><a href="tel:+1(21) 234 4568"><i class="far fa-envelope me-1"></i></a></h5>
                                        <a href="mailto:support@mail.com" class="mail"> support@mail.com</a>

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
                    <p class="copy-footer-29">©  2024 VoteBox. All rights reserved. Design by. 
                        <a>Tania</a>
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
        $(window).on("scroll", function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#site-header").addClass("nav-fixed");
            } else {
                $("#site-header").removeClass("nav-fixed");
            }
        });

      
        $(".navbar-toggler").on("click", function () {
            $("header").toggleClass("active");
        });
        $(document).on("ready", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
            $(window).on("resize", function () {
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
