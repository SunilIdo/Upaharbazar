<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="Contact_us.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<!--Content Block-->
<section class="content-wrapper">
	<div class="content-container container">
		<div class="col-left">
			<div class="block compare-block">
				<div class="block-title">COMPARE PRODUCTS</div>
				<ul>
					<li>You have no items to compare</li>
				</ul>
			</div>
			<div class="block community-block">
				<div class="block-title">COMMUNITY POLL</div>
				<ul>
					<li class="question-row">WHAT IS YOUR FAVORITE COLOR</li>
					<li><input type="radio"><a href="#" title="Green">Green</a></li>
					<li><input type="radio"><a href="#" title="Red">Red</a></li>
					<li><input type="radio"><a href="#" title="Black">Black</a></li>
					<li><input type="radio"><a href="#" title="Magenta">Magenta</a></li>
					<li class="vote-row"><button title="Vote">Vote</button></li>
				</ul>
			</div>
		</div>
		<div  class="col-main">
			<h1 class="page-title">Contact Us</h1>
			<div class="contact-form-container">
				<div  class="form-title">Contact Information</div>
                <ul class="form-fields">
					<li class="left">
						<asp:Label ID="Label1" runat="server" Text="Name"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
						<br /><asp:TextBox ID="txtname" runat="server"></asp:TextBox>
					</li>
					<li class="left">
						<asp:Label ID="Label2" runat="server" Text="Email"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
						<br /><asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
					</li>
					<li class="left">
						<asp:Label ID="Label3" runat="server" Text="Telephone"></asp:Label>
                        <br />
						<asp:TextBox ID="txttelephone" runat="server"></asp:TextBox>
					</li>
					<li class="full-row">
                    <br /><br /><br /><br /><br /><br /><br /><br />
						<asp:Label ID="Label5" runat="server" Text="Comment"></asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtcomment" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    	<br /><asp:TextBox ID="txtcomment" runat="server" TextMode="MultiLine" Height="148px" 
                              Width="448px"></asp:TextBox>
					</li>
				</ul>
                <div class="clearfix"></div>                 
            <div class="button-set">
					<p class="required">* Required Fields</p>
                    <asp:Button ID="btnsubmit" class="form-button" runat="server" Text="Submit" 
                        onclick="btnsubmit_Click"></asp:Button>
		</div>
        </div>
        </div>
		<div class="clearfix"></div>
        <br /><br />
                    <br />  <br /><br />
                    <br />
		<div class="news-letter-container">
			<div class="free-shipping-block">
				<h1>ENJOY FREE SHIPPING</h1>
				<p>on all orders as our holiday gift for you!</p>
			</div>
			<div class="news-letter-block">
				<h2>SIGN UP FOR OUR NEWSLETTER</h2>
				<input type="text" value="Enter email address" title="" />
				<input class="submit-btn" type="submit" value="Submit" title="Submit" />
			</div>
		</div>	
	</div>
</section>
</asp:Content>

