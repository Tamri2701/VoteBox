<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singup.aspx.cs" Inherits="voting.singup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />

    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="stylesing.css" rel="stylesheet" />


    
    <link href="css/font-awesome.css" rel="stylesheet"/>

    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-page signup-page">
            <h2 class="title1">SignUp Here</h2>
            <div class="sign-up-row widget-shadow">
                <h5>Personal Information :</h5>
                <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                    ErrorMessage="First Name is required." Display="Dynamic" ForeColor="Red" />
                
                <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                    ErrorMessage="Last Name is required." Display="Dynamic" ForeColor="Red" />

                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email Address is required." Display="Dynamic" ForeColor="Red" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Enter a valid email address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ForeColor="Red" Display="Dynamic" />

                <div class="sign-u">
                    <asp:Label ID="lblGender" runat="server" Text="Gender*" CssClass="control-label"></asp:Label>
                    <div>
                        <asp:RadioButton ID="rbMale" runat="server" Text="Male" GroupName="Gender" />
                        <asp:RadioButton ID="rbFemale" runat="server" Text="Female" GroupName="Gender" />
                    </div>
                  
                </div>

                <h6>Login Information :</h6>
                 <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" CssClass="form-control" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUsername"
                    ErrorMessage="Username is required." Display="Dynamic" ForeColor="Red" />

                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Password is required." Display="Dynamic" ForeColor="Red" />

                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                    ErrorMessage="Confirm Password is required." Display="Dynamic" ForeColor="Red" />
                <asp:CompareValidator ID="cvPasswordMatch" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match." Display="Dynamic" ForeColor="Red" />

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />

                <div class="clearfix"></div>

                <div class="registration">
                    Already Registered.
                    <a class="" href="login.aspx">Login</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

