<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="voting.dashboard" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <link href="css/admin.css" rel="stylesheet" />
    <link href="css/grid.css" rel="stylesheet" />
    <link href="css/style-starter.css" rel="stylesheet" />
    <script>
        window.onscroll = function () {
            myFunction();
        };

        function myFunction() {
            var navbar = document.getElementById("site-header");
            if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
                navbar.classList.add("scrolled");
            } else {
                navbar.classList.remove("scrolled");
            }
        </script>
    <style>
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.5s ease-in-out;
        }

        .card:hover {
            box-shadow: 0 8px 12px maroon;
        }
        .card-header {
           background-color: maroon;
           border-bottom: 1px solid #dee2e6;
           border-top-left-radius: 10px;
           border-top-right-radius: 10px;
           padding: 10px;
           color: white; 
           font-weight: bold; 
}



        .card img {
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            width: 100%;
            height: auto;
        }
       
       
    </style>
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
                            <div class="profile">
                                <img src="images3/admin.png" alt="Profile Pic" width="30" height="30" />
                                <asp:Label ID="lblAdminUsername" runat="server"></asp:Label>
                            </div>
                        </li>
                    </ul>

                    
                    <ul class="navbar-nav search-right mt-lg-0 mt-2">
                        <li class="nav-item mr-2" title="Search"><a href="#search" class="search-search">
                                <span class="fas fa-search" aria-hidden="true"></span></a></li>
                  
                        <li class="nav-item mx-lg-4"><a href="login.aspx" class="phone-btn btn-white d-none d-lg-block btn-style ms-2"><span class="fas fa-user me-2" aria-hidden="true"></span> Logout</a></li>

                    </ul>

                    
                    <div id="search" class="w3lpop-overlay">
                        <div class="w3lpopup">
                            <form action="#formsearch"  class="d-flex">
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
          <div class="container py-lg-5 py-md-4">
                <div class="row">
                    <div class="col-md-4 mb-md-0 mb-4">
                        <div class="card">
                            <div class="card-header">Admin Side</div>
                            <a href="adminreg.aspx">
                                <img src="images4/admin.jpg" class="card-img-top" alt="Image 1" />
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-md-0 mb-4">
                        <div class="card">
                            <div class="card-header">Candidate Registeration form </div>
                            <a href="Default.aspx">
                                <img src="images4/regi.jpg"class="card-img-top" alt="Image 2" />
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">Live Updates</div>
                            <a href="result.aspx">
                                <img src="images4\update.jpg" class="card-img-top" alt="Image 3" />
                            </a>
                        </div>
                    </div>
                      <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">Pricing Plan</div>
                            <a href="subscription.aspx" />
                                <img src="images4\sub.jpg " class="card-img-top" alt="Image 3" />
                            </>
                        </div>
                </div>
              </div>
              </div>
    </section>
               
   
</body>
</html>

