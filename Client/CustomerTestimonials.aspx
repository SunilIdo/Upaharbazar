<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="CustomerTestimonials.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

<section class="content-wrapper">
	<div class="content-container container">
    <div class="main">
<asp:Label ID="lbltitle" runat="server" Text="Label"></asp:Label><br />

<asp:GridView ID="GridViewTestimonials" runat="server"></asp:GridView>



            <div class="buttons-set">
					<a href="#" title="Back" class="f-left">&laquo; Back</a>
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

