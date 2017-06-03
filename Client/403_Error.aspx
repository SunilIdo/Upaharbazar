<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="403_Error.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<section class="content-wrapper">
	<div class="content-container container">
		<div class="breadcrum-container">
			<ul>
				<li><a href="#" title="Home">403</a></li>
				<li>Access Denied</li>
			</ul>
		</div>
		<div class="main">
			<div class="error-container">
				<h1>403</h1>
				<p>The page you are looking for is not accessible.</p>
				<div class="f-fix">
					<a href="index-2.html" title="Back To Home" class="colors-btn">Back To Home</a>
					<a href="#" title="Go to Sitemap" class="colors-btn">Go to Sitemap</a>
				</div>
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

