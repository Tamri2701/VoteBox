<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userform.aspx.cs" Inherits="voting.userform" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
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

         }

     </script>
    <style>
        .search-search {
            display: flex;
            align-items: center;
        }

        .phone-btn {
            display: flex;
            align-items: center;
        }

        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
            margin: 20px;
        }

        .card-header {
            background-color: #800000;
            color: #fff;
            padding: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .card-body {
            padding: 20px;
        }
            .card-body .gridview-container {
                max-height: 300px;
                overflow-y: auto;
            }
        .auto-style1 {
            margin-right: 36px;
        }
        .gridview-container .gridview-row,
.gridview-container .gridview-header,
.gridview-container .gridview-footer {
    font-size: 14px; 
}

.gridview-container .gridview-cell {
    padding: 5px; 
}
    </style>
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
                            <li><a href="Default.aspx">Candidate registration</a></li>
                             
                            <li class="active"><span class="fas fa-angle-double-right mx-2"> userform</span></li>
                           <li><a href="result.aspx">>> Result</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <form id="form2" runat="server">
        

           
           <div class="card">
                <div class="card-header">
                    Vote Details
                    <div>
                        <asp:Label ID="lblStartTime" runat="server" Text=""></asp:Label>
                        <asp:Label ID="lblEndTime" runat="server" Text=""></asp:Label>
                        <asp:Label ID="lblRemainingTime" runat="server" Text=""></asp:Label>
                        <asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label>


</div>

                </div>
                <div class="card-body">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:voteadminConnectionString3 %>" SelectCommand="SELECT * FROM [Votes]"></asp:SqlDataSource>
                    <asp:Label ID="lblVoteMessage" runat="server" Text="" Visible="false" OnClientClick="setTimeout(clearVoteMessage, 5000);"></asp:Label>
                    <div class="gridview-container">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VoteID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="323px" Width="976px" CssClass="auto-style1" GridLines="Horizontal">
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                       <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" Width="50px" Height="60px" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="VoteID" HeaderText="VoteID" InsertVisible="False" ReadOnly="True" SortExpression="VoteID" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:ButtonField ButtonType="Button" CommandName="VoteClick" HeaderText="Cast Your Vote" Text="Vote" />
                        </Columns>
                    </asp:GridView>
                   
                </div>
                    </div>
            </div>
        
    </form>

    <script type="text/javascript">
        setTimeout(function () {
            document.getElementById('<%= lblVoteMessage.ClientID %>').style.display = 'none';
        }, 5000);
    </script>
</body>
</html>
