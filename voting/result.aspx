<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="voting.result" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/grid.css" rel="stylesheet" />
    <link href="css/style-starter.css" rel="stylesheet" />
    <link href="resultstyle.css" rel="stylesheet" />
    
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
        }
    </script>
  
 
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
                            <a class="nav-link" href="About.aspx">About</a>
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
                    </ul>
                </div>
                <div id="search" class="w3lpop-overlay">
                    <div class="w3lpopup">
                        <form action="#formsearch" class="d-flex">
                            <input type="search" placeholder="Search.." name="search" required="required"  />
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
                            <li><a href="Default.aspx">Candidate Registration</a></li>
                            <li class="active"><span class="fas fa-angle-double-right mx-2"></span>Resuts</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
   
        <form id="form1" runat="server">

            <div class="big-card">
                <h1>Results</h1>
                <br />
                 <div class="small-container">
                <h6>Share Results</h6>
               <p>Share the voting results with others:</p>
             <ul class="share-options">
        <li>
            <a href="mailto:?subject=Voting%20Results&amp;body=Check%20out%20the%20voting%20results%20here:%20[Insert%20Result%20Link]" class="btn btn-primary">Send Email</a>
        </li>
        <li>
            <a href="https://wa.me/?text=Check%20out%20the%20voting%20results%20here:%20[Insert%20Result%20Link]" class="btn btn-info">Share on WhatsApp</a>
        </li>
    </ul>
</div>
                <br />


    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div>
                   
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="FirstName" YValueMembers="Vote"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:voteadminConnectionString4 %>" SelectCommand="SELECT [VoteID], [FirstName], [Vote], [Question] FROM [Votes]"></asp:SqlDataSource>
            </div>

            <div class="col-md-6">
                <div>
               
                    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1">
                        <Series>
                            <asp:Series ChartType="Pie" Name="Series1" XValueMember="FirstName" YValueMembers="Vote"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </div>

  
</div>

            </div>
        
    </div>
                </div>
</form>

    
</body>
</html>

