<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="Checkoutstep1.aspx.cs" Inherits="Client_Default2" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" Runat="Server">

    <style type="text/css">
        .style1
        {
            width: 316px;
            height: 25px;
        }
        .style2
        {
            width: 98px;
            height: 25px;
        }
        .style3
        {
            height: 25px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <!--Content Block-->
<section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">Login or Create an Account</h1>
			<div class="account-login">
				<div class="col-1 new-users">
					<div class="content">
						<h2>New Customers</h2>
						<p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
					</div>
					<div class="buttons-set">
						<a class="colors-btn" title="Create an Account" href="Registration.aspx"><span><span>Create an Account</span></span></a>
						<div class="clear"></div>
					</div>
				</div>
				<div class="col-2 registered-users">
					<div class="content">
						<h2>Returning Customer</h2>
						<p>If you have an account with us, please log in. Otherwise create an account.</p>
						<ul class="form-list">
							<li>
                            <asp:Label ID="Label1" class="required" for="email" runat="server" Text="Email Address:"></asp:Label>
								<br />
								<div class="input-box">
                                <asp:TextBox ID="txtemail" class="input-text required-entry validate-email" 
                                        runat="server" Height="31px" Width="221px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
									</div>
								<div class="clear"></div>
							</li>
							<li>
                            <asp:Label ID="Label5" runat="server" Text="Password:" class="required" for="pass"></asp:Label>
								<br />
                                <div class="input-box">
                                    <asp:TextBox ID="txtpassword" runat="server" Height="31px" TextMode="Password" 
                                        Width="221px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtpassword" ErrorMessage="RequiredFieldValidator" class="input-text required-entry validate-password">*</asp:RequiredFieldValidator>
                                </div>
                                <div class="clear">
                                </div>
							</li>
						</ul>
						<p class="required">* Required Fields</p>
					</div>
					<div class="buttons-set">
						<a class="f-left" href="#">Forgot Your Password?</a>
                         <asp:Button ID="Button1" class="colors-btn" runat="server" Text="Login" Height="27px" 
                                onclick="btnlogin_Click" />
						
						<div class="clear"></div>
					</div>
            	</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="news-letter-container">
			<div class="free-shipping-block">
				<h1>ENJOY FREE SHIPPING</h1>
				<p>on all orders as our holiday gift for you!</p>
			</div>
			<div class="news-letter-block">
				<h2>SIGN UP FOR OUR NEWSLETTER</h2>
				<input type="text" value="Enter email address" title="" />
				<input type="submit" value="Submit" title="Submit" />
			</div>
		</div>	
	</div>
</section>
    
</asp:Content>

