<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="voting.Contact" %>



<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>VoteBoxcantactuss</title>
    <link href="//fonts.googleapis.com/css2?family=Hind+Siliguri:wght@300;400;500;600;700&display=swap" rel="stylesheet" />
    
    <link href="css/style-starter.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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
                            <a class="nav-link" aria-current="page" href="Index.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="About.aspx">About</a>
                        </li>
                      
                      
                        <li class="nav-item">
                            <a class="nav-link active" href="Contact.aspx">Contact</a>
                        </li>

                    </ul>
                    <ul class="navbar-nav search-right mt-lg-0 mt-2">
                        <li class="nav-item mr-2" title="Search"><a href="#search" class="search-search">
                                <span class="fas fa-search" aria-hidden="true"></span></a></li>
                        
                    </ul>

                    
                    <div id="search" class="w3lpop-overlay">
                        <div class="w3lpopup">
                            <action="#formsearch"  class="d-flex">
                                <input type="search" placeholder="Search.." name="search" required="required"  />
               </>                 <button type="submit"><span class="fas fa-search"></span></button>
                                <a class="close" href="#formsearch">&times;</a>
                         
                        </div>
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
                            <li class="active"><span class="fas fa-angle-double-right mx-2"></span> Contact Us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
            
        </section>
        <section class="w3l-contact-1 py-5" id="contact">
            <div class="contacts-9 py-lg-5 py-md-4">
                <div class="container"><div class="contactct-fm map-content-9">
                    <div class="header-title text-center">
                        <h6 class="title-subhny"><span>contact Us</span></h6>
                        <h3 class="title-w3l mb-2">Let’s Talk About
                            <span class="span-bold"> Your Project</span>
                        </h3>
                        <p class="mb-sm-5 mb-4">Start working with Us that can provide everything you need to generate awareness,
                            drive traffic,
                            connect. <br /> We guarantee that you’ll be able to have any issue resolved within 24 hours.</p>
                    </div>
                   
                    <asp:Panel runat="server"  CssClass="pt-lg-4">
    <div class="twice-two">
        <asp:TextBox runat="server" ID="txtName" CssClass="form-control" placeholder="Name" Required="true" />
        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="Email" Required="true" />
    </div>
    <div class="twice-two">
        <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control" placeholder="Phone" Required="true" />
        <asp:TextBox runat="server" ID="txtSubject" CssClass="form-control" placeholder="Subject" Required="true" />
    </div>
    <asp:TextBox runat="server" ID="txtMessage" CssClass="form-control" placeholder="Message" Required="true" TextMode="MultiLine" />
    
</asp:Panel>
                </div>
                <div class="row contact-view my-5 py-lg-5">
                    <div class="col-lg-6 cont-details">
                        <div class="contactct-fm-text text-left">
                            <h6 class="title-subhny"><span>Find Us</span></h6>
                            <h3 class="title-w3l mb-5">Mumbai
                                <span class="span-bold"> Office</span>
                            </h3>
                            <div class="cont-top">
                                <div class="cont-left text-center">
                                    <span class="fas fa-phone-alt"></span>
                                </div>
                                <div class="cont-right">
                                    <h5>Phone number</h5>
                                    <p><a href="tel:+(21) 255 088 4943">+(91) 255 088 4943</a></p>
                                </div>
                            </div>
                            <div class="cont-top margin-up">
                                <div class="cont-left text-center">
                                    <span class="fas fa-envelope-open-text"></span>
                                </div>
                                <div class="cont-right">
                                    <h5>Send Email</h5>
                                    <p><a href="#" class="mail">bhardwajtania@mail.com</a></p>
                                </div>
                            </div>
                            <div class="cont-top margin-up">
                                <div class="cont-left text-center">
                                    <span class="fas fa-map-marker-alt"></span>
                                </div>
                                <div class="cont-right">
                                    <h5>Office Address</h5>
                                    <p class="pr-lg-5">Address here, 434 Food Honey street,<br /> pune, Maharasshtra- 62617.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 cont-details mt-lg-0 mt-5">
                        <div class="contactct-fm-text text-left">
                            <h6 class="title-subhny"><span>Find Us</span></h6>
                            <h3 class="title-w3l mb-5">Delhi 
                                <span class="span-bold"> Office</span>
                            </h3>
                            <div class="cont-top">
                                <div class="cont-left text-center">
                                    <span class="fas fa-phone-alt"></span>
                                </div>
                                <div class="cont-right">
                                    <h5>Phone number</h5>
                                    <p><a href="tel:+(21) 255 088 4943">+(91) 255 088 4943</a></p>
                                </div>
                            </div>
                            <div class="cont-top margin-up">
                                <div class="cont-left text-center">
                                    <span class="fas fa-envelope-open-text"></span>
                                </div>
                                <div class="cont-right">
                                    <h5>Send Email</h5>
                                    <p><a href="#" class="mail">bhardwajtania8438@gmail.com</a></p>
                                </div>
                            </div>
                            <div class="cont-top margin-up">
                                <div class="cont-left text-center">
                                    <span class="fas fa-map-marker-alt"></span>
                                </div>
                                <div class="cont-right">
                                    <h5>Office Address</h5>
                                    <p class="pr-lg-5">Address here, 434 Food Honey street,<br /> Palam, New Delhi - 62617.</p>
                                </div>
                            </div>
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
                           
                            <div class="w3pt-call-box mt-4">
                                <div class="w3pt-call-info">
                                    <h5>Get Us Support</h5>

                                    <h5><a href="tel:+1(21) 234 557 456"><i class="fas fa-phone-alt me-1"></i> +1(21) 234 557 456</a></h5>
                                    <h5><href="tel:+1(21) 234 4568">
                                        <i class="far fa-envelope me-1"></i> 
                                        <href="mailto:support@mail.com" class="mail"> support@mail.com</>


                                    </h5>

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
                        <a >Tania</a>
                    </p>
                </div>
            </div>
        </div>

        <!-- move top -->
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
    </form>
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

            //Main navigation Active Class Add Remove
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
            $(function() {
                $('.navbar-toggler').click(function () {
                    $('body').toggleClass('noscroll');
                })
            });
        </script>
   
    
     <script src="js/bootstrap.min.js"></script>
   
</body>
</html>



