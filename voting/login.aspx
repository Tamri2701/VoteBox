<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="voting.login" %>



            <!DOCTYPE HTML>
            <html>
            <head runat="server">
                <title>Login Page</title>
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <meta name="keywords" content="Login Page" />

                <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    
                <link href="css/styles123.css" rel="stylesheet" />
                <link href="css/font-awesome.css" rel="stylesheet" />

                <script src="js/jquery-1.11.1.min.js"></script>
                <script src="js/bootstrap.js"></script>
            </head>
            <body>
                <form id="form1" runat="server">
                    <div class="container">
                        <div class="main-page login-page">
                            <h2 class="title1">Login</h2>
                            <div class="widget-shadow">
                                <div class="login-body">
                                    <asp:TextBox ID="txtUsername" runat="server" CssClass="user" placeholder="Enter Your Username" required="" Height="42px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtUsername"
                                        ErrorMessage="Username is required." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>

                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="lock" placeholder="Password"></asp:TextBox>
                                 
                                    <div class="forgot-grid">
                                        <asp:CheckBox ID="chkRemember" runat="server" Text="Remember me" Checked="true" />
                                        <div class="forgot">
                                            <a href="#">forgot password?</a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <asp:Button ID="btnSignIn" runat="server" Text="Sign In" OnClick="btnSignIn_Click" />
                                    <asp:Label ID="lblErrorMessage" runat="server" CssClass="error-message" Visible="false" Text=""></asp:Label>
                                    <div class="registration">
                                        Don't have an account ?
                                        <a href="singup.aspx">Create an account</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </body>
            </html>
