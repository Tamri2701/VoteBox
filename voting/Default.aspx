<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="voting.CrudInGridView" %>

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
     <script>
         function showAlert() {
             alert('Submitted successfully');
         }
     </script>

    <style>
         .card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
                            <li><a href="adminreg.aspx">Admin Registration</a></li>
                            
                            <li class="active"><span class="fas fa-angle-double-right mx-2"></span>Candidate Registraion</li>
                            <li><a href="userform.aspx">>> userform</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <form id="form1" runat="server">
         <div class="card">
            
            <h1><u>Candidate Registeration Page </u></h1>
             <br />
             <div>
            <h6>Enter start and end time for accepting votes</h6><br />
                 </div>

             <div>
            <asp:TextBox ID="txtStartTime" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
            <asp:TextBox ID="txtEndTime" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="btnSubmit_Click" OnClientClick="return validateTime()" />
        </div><br />

         <div class="button-container">
            <asp:Button ID="btnFinalSubmit" runat="server" Text="Submitn Form" OnClick="btnFinalSubmit_Click" /> 
                         <br />
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
           
        </div>
            
               <div class="card">
                      <div>
 
</div>
<asp:GridView ID="gvVotes" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="VoteID"
    ShowHeaderWhenEmpty="true"
    OnRowCommand="gvVotes_RowCommand" OnRowEditing="gvVotes_RowEditing" OnRowCancelingEdit="gvVotes_RowCancelingEdit"
    OnRowUpdating="gvVotes_RowUpdating" OnRowDeleting="gvVotes_RowDeleting"
    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="gvVotes_SelectedIndexChanged">
    
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />

    <Columns>
        
           
        <asp:TemplateField HeaderText="First Name">
            <ItemTemplate>
                <asp:Label Text='<%# Eval("FirstName") %>' runat="server" />
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtFirstName" Text='<%# Eval("FirstName") %>' runat="server" />
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtFirstNameFooter" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Question">
            <ItemTemplate>
                            <asp:Label Text='<%# Eval("Question") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtquestion"  Text='<%# Eval("Question") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtquestionFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Description") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                         <asp:TextBox ID="txtdescription" Text='<%# Eval("Description") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtdescriptionFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
              

      
  
        <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label Text='<%# Eval("Email") %>' runat="server" />
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtEmail" Text='<%# Eval("Email") %>' runat="server" />
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtEmailFooter" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ImageUrl="~/Images1/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                <asp:ImageButton ImageUrl="~/Images1/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:ImageButton ImageUrl="~/Images1/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                <asp:ImageButton ImageUrl="~/Images1/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:ImageButton ImageUrl="~/Images1/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
            </FooterTemplate>
        </asp:TemplateField>

    </Columns>
   

</asp:GridView>
         
                   </div>
                  </div>
        
   
            <div>


                 
           


        </div>
 
             
        <div class="card">
            <div id="qrCodesContainer" class="container">

               <asp:Button ID="btnGenerateQR" runat="server" Text="Generate QR" OnClick="btnGenerateQR_Click" />
                <br />
                <asp:Image ID="imgQRCode" runat="server" Visible="false" />

    </div>
        </div>
        
    </form>
    <script>
        function validateTime() {
            var startTime = document.getElementById("<%= txtStartTime.ClientID %>").value;
            var endTime = document.getElementById("<%= txtEndTime.ClientID %>").value;

         
            if (startTime === "" || endTime === "") {
                alert("Please enter both start and end times.");
                return false;
            }

            if (new Date(startTime) >= new Date(endTime)) {
                alert("End time must be after start time.");
                return false;
            }

         

            return true;
        }
    </script>
</body>
</html>
     

