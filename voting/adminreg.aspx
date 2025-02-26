<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminreg.aspx.cs" Inherits="voting.adminreg" %>


<!DOCTYPE html>


 <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
  
    <title>Admin Registration</title>

    <style>
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 90vh;
            width:200vh;
        }
       
        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
            height:320px;
            width:1000px;

        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-header {
            background-color: #800000;
            color: #fff;
            padding: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }
        
          .card-header1 {
            background-color: white;
            }
      
        .gradient-background {
    background: linear-gradient(135deg, #E0FFFF, #F0E68C); /* Adjust colors as needed */
}


        .form-group {
            margin-bottom: 20px;
            margin-left: 10px; 
         

        }

        .form-control {
            width: calc(100% - 24px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            margin-left: 10px; 
        }

        .btn-primary {
            background-color:#800000 ;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-primary1 {
              background-color:deeppink ;
                          color:white;
                           padding: 10px 20px;
                               border:medium;
                               border-color:deeppink;
         
        }

        .btn-primary:hover {
            background-color: #007bff;
        }

    
        .calendar {
            display: none;
            position: absolute;
            z-index: 1000;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 10px;
        }

        



        .auto-style1 {
            background-color: #800000;
            color: #fff;
            padding: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            height: 29px;
        }

        



    </style>
    <script>
        $(document).ready(function () {
            
            function displayPurchasePlanPopup() {
                $("#purchasePlanPopup").show();
            }

            $("input[name='layout']").change(function () {
                if ($(this).val() === "MultiPosition") {
                    displayPurchasePlanPopup();
                } else {
                    $("#purchasePlanPopup").hide();
                }
            });

           
            $("#closePurchasePlanPopup").click(function () {
                $("#purchasePlanPopup").hide();
            });
        });
        function closePurchasePlanPopup() {
            document.getElementById("purchasePlanPopup").style.display = "none";
        }

    
    </script>


    
    <script>
        function toggleCalendar() {
            var calendar = document.getElementById("calVotingDate");
            calendar.style.display = calendar.style.display === "block" ? "none" : "block";

        }
    </script>


</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card">
                <div class="auto-style1">
                    Admin Registration 
                    <br />
                    &nbsp;</div>
                  
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtAdminName">Admin Name:</label>
                        <asp:TextBox ID="txtAdminName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                   
                    <div class="form-group">
                        <label>Date of Voting Day:</label>
                        <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox><br />

                        <button type="button" class="btn btn-primary" onclick="toggleCalendar()">Select Date</button>
                        <div id="calVotingDate" class="calendar">
                            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>

                        </div>
                        <div>
                       <label for="txtDescription">Description for Voters:</label>
                       <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"></asp:TextBox>
                         </div>
                     <div class="form-group">
                      <label for="rbLayout">Candidate Registration Layout:</label><br/>
                       <asp:RadioButton ID="rbOnePosition" runat="server" Text="One Position" GroupName="layout" AutoPostBack="true" OnCheckedChanged="rbLayout_CheckedChanged"/>
                        
                       <asp:RadioButton ID="rbMultiPosition" runat="server" Text="Multi Position" GroupName="layout" AutoPostBack="true" OnCheckedChanged="rbLayout_CheckedChanged" />
                         <br />
           
                       <div class="gradient-background  ">
                           <div id="purchasePlanPopup" runat="server">
                   
                
                          <div class="gradient-background  ">
                        <span class="close" onclick="closePurchasePlanPopup()">&times;</span>
                        <div class="card1">
                    
                            
                            <div class="card-body1">
                                 <b> Locked Content</b>
                                <p>This content is locked. Please purchase a plan to unlock.</p>
                                 <p>
                                     <asp:Button ID="Button1" runat="server" BackColor="#FF0066" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" ForeColor="White" OnClick="Button1_Click" Text="BUY" Width="100px" />
                                 </p>
                                 <p>&nbsp;</p>
            </div>                     
</div>
 </div>
                                
    </div>
     </div>
                         

                         
                          <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                          
</div>
                    
                    </div>


                 
                </div>
                </div>
            
            
        </div>

    </form>

</body>
</html>
