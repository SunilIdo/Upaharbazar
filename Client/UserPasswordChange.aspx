<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="UserPasswordChange.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
   <section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">Change Password or Create an Account</h1>
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
						<h2>Change Your Password</h2>
						<p>If you have an account with us already, Then only you can change your password.</p>
						<ul class="form-list">
							<li>
                            <div class="input-box">
                <asp:Label ID="Label2" class="required" for="pass" runat="server" Text="Old Password:"></asp:Label>
            
               <br />
                <asp:TextBox ID="txtoldpassword" class="input-text required-entry validate-password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtoldpassword" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                                
           </div>
								<div class="clear"></div>
							</li>
           
               <li>
            <asp:Label ID="Label3" class="required" for="pass" runat="server" Text="New Password:"></asp:Label>
      <br />
                <asp:TextBox ID="txtnewpassword" class="input-text required-entry validate-password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtnewpassword" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            <div class="clear">
            </div>
							</li>
                          <li>
                                <asp:Label ID="Label4" class="required" for="pass" runat="server" Text="Confirm Password:"></asp:Label>
                           <br />
                                    <asp:TextBox ID="txtconfirmpassword" class="input-text required-entry validate-password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtconfirmpassword" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                               
                                <div class="clear">
                                  
                                </div>
                            </li>
                          
                              
                                   
                               
                                </ul>
						<p class="required">* Required Fields</p>
					</div>
					<div class="buttons-set">
						
                        <asp:Button ID="btnsubmit" class="colors-btn" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click" />
						
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

