<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="subscription.aspx.cs" Inherits="voting.subscription" %>



<!DOCTYPE html>

<html lang="zxx" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Business Pricing </title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="UTF-8" />
    <meta name="keywords" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link rel="stylesheet" href="css/style12.css" type="text/css" media="all" />
    <link href="//fonts.googleapis.com/css?family=Encode+Sans+Condensed:100,200,300,400,500,600,700,800,900&amp;subset=latin-ext,vietnamese"
          rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-bg">
          
            <h1>
                VoteBox Pricing Tables
            </h1>
           
            <div class="lm-tabel">
             
                <div class="lm-item lm-item-2">
                    <div class="lm-item-top">
                        <span class="lm-item-title lm-underline">Free</span>
                        <div class="lm-item-price">0
                            <span>/ </span>
                        </div>
                    </div>
                    <div class="lm-item-body">
                        <div class="lm-item-desc">
                            <strong>Free Plan</strong>
                        </div>
                        <ul class="lm-item-list">
                            <li>
                                <strong>Unlimited </strong>Candidate Registration </li>
                            <li>
                                <strong></strong> limited pages</li>
                    
                            <li>
                                <strong>layout</strong>single position</li>
                            <li>
                                <strong>Free</strong> billing system</li>
                        </ul>
                        <div class="buy-button">

               <asp:LinkButton runat="server" ID="lnkBuyNow1" CssClass="popup-with-zoom-anim" OnClick="lnkBuyNow1_Click">Buy Now</asp:LinkButton>


                        </div>
                    </div>
                    <div class="lm-item-bottom"></div>
                </div>
               <div class="lm-item lm-item-1">
				<div class="lm-item-top">
					<span class="lm-item-title lm-underline">Business</span>
					<div class="lm-item-price item-price2-w3ls">500
						<span>/ per month</span>
					</div>
				</div>
				<div class="lm-item-body">
					<div class="lm-item-desc">
						<strong>Best Choice</strong>
					</div>
					<ul class="lm-item-list">
						<li>
							<strong>20</strong>Candidate Registration </li>
						<li>
							<strong>15</strong> new pages</li>
						<li>
							<strong>Layout</strong> multi-position </li>
					
						<li>
							<strong>Free</strong> billing system</li>
					</ul>
					<div class="buy-button">
						<a class="popup-with-zoom-anim" href="#popup1">Buy Now</a>
					</div>
				</div>
				<div class="lm-item-bottom"></div>
			</div>
			<div class="lm-item lm-item-3">
				<div class="lm-item-top">
					<span class="lm-item-title lm-underline">Premium</span>
					<div class="lm-item-price item-price3-w3ls">720
						<span>/ per month</span>
					</div>
				</div>
				<div class="lm-item-body">
					<div class="lm-item-desc">
						<strong>Unlimited Features</strong>
					</div>
					<ul class="lm-item-list">
						<li>
							<strong>Unlimited</strong> Candidate Registraion</li>
						<li>
							<strong>Unlimited</strong> new pages</li>
						<li>
							<strong>Layout</strong> multi-position </li>
						<li>
							<strong>Free</strong> billing system</li>
					</ul>
					<div class="buy-button">
						<a class="popup-with-zoom-anim" href="#popup1">Buy Now</a>
					</div>
				</div>
				<div class="lm-item-bottom"></div>
			</div>
			<div class="clear"></div>
		</div>

            </div>
         
            <div id="popup1" class="pop-overlay">
                <div class="popup">
                    <div class="signin-form profile">
                        <h3>Register Here</h3>
                        
                        
                    </div>
                </div>
            </div>
           
            <div class="footer">
                <h2> 2024 VoteBox. All rights reserved | Design by Tania&nbsp;&nbsp;&nbsp;&nbsp;
                    
                </h2>
            </div>
         
    </form>
</body>
</html>

