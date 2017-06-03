<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Client_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<section class="content-wrapper">
	<div class="content-container container">
		<div class="breadcrum-container">
			<ul>
				<li><a href="#" title="Home">Home</a></li>
				<li>Man</li>
			</ul>
		</div>
		<div class="col-left">
			<div class="block man-block">
				<div id="categories" class="block-title" runat="server">Categories</div>
				
			</div>
			<div class="block shop-by-block">
				<div class="block-title">SHOP BY</div>
				<ul>
					<li>Price</li>
                    <li><a href="ProductsByPrice.aspx?min=0&max=99.99" title="Rs.0.00 - Rs.99.99 (1)">Rs.0.00 - Rs.99.99 (1)</a></li>
					<li><a href="ProductsByPrice.aspx?min=100&max=199.99" title="Rs.100.00 - Rs.199.99 (1)">Rs.100.00 - Rs.199.99 (1)</a></li>
					<li><a href="ProductsByPrice.aspx?min=200&max=299.99" title="Rs.200.00 - Rs.299.99 (1)">Rs.200.00 - Rs.299.99 (1)</a></li>
					<li><a href="ProductsByPrice.aspx?min=300&max=399.99" title="Rs.300.00 - Rs.399.99 (1)">Rs.300.00 - Rs.399.99 (1)</a></li>
					<li><a href="ProductsByPrice.aspx?min=400&max=499.99" title="Rs.400.00 - Rs.499.99 (1)">Rs.400.00 - Rs.499.99 (1)</a></li>
                    <li><a href="ProductsByPrice.aspx?min=500&max=599.99" title="Rs.500.00 - Rs.599.99 (1)">Rs.500.00 - Rs.599.99 (1)</a></li>
                    <li><a href="ProductsByPrice.aspx?min=600&max=699.99" title="Rs.600.00 - Rs.699.99 (1)">Rs.600.00 - Rs.699.99 (1)</a></li>
                    <li><a href="ProductsByPrice.aspx?min=700&max=799.99" title="Rs.700.00 - Rs.799.99 (1)">Rs.700.00 - Rs.799.99 (1)</a></li>
                    <li><a href="ProductsByPrice.aspx?min=800&max=899.99" title="Rs.800.00 - Rs.899.99 (1)">Rs.800.00 - Rs.899.99 (1)</a></li>
				</ul>
			</div>
			<%--<div class="block compare-block">
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
			</div>--%>
			<div class="paypal-block">
				<a href="#" title="Paypal"><img src="images/paypal_img.png" title="Paypal" alt="Paypal" /></a>
			</div>
		</div>
		<div class="col-main">
			<div class="category-banner"><img src="images/sunglass.jpg" title="Banner" alt="Banner" /></div>
			<div class="pager-container">
				<div class="pager">
					<div id="showitem" runat="server" class="show-items"></div>
					<div class="show-per-page"><label>Show</label><asp:DropDownList 
                            ID="drpdwnshowitems" runat="server" 
                            onselectedindexchanged="drpdwnshowitems_SelectedIndexChanged" 
                            AutoPostBack="True">
                   
                        </asp:DropDownList></div>
				</div>
				<div class="view-by-block">
					<ul class="view-by">
						<li>View as:</li>
						<li><a href="#" title="Grid" class="grid">Grid</a></li>
						<li><a href="#" title="List" class="list">List</a></li>
					</ul>
					<div class="short-by">
						<label>Sort Type:</label><asp:DropDownList ID="drpdwnsorttype" runat="server" 
                            onselectedindexchanged="drpdwnsorttype_SelectedIndexChanged" 
                            AutoPostBack="True">
                        </asp:DropDownList>
					</div>
				</div>
			</div>
			<div id="newproductblock" class="new-product-block" runat="server">
			<%=ReturnHTMLValue()%>
             <ul class="pagenumber">
             <%=Return_PageLinks() %>
             </ul>
			</div>
			<div class="pager-container">
				<div class="pager">
					<div class="show-items">6 Item(s)</div>
					<div class="show-per-page"><label>Show</label> <select><option>09</option></select></div>
				</div>
				<div class="view-by-block">
					<ul class="view-by">
						<li>View as:</li>
						<li><a href="#" title="Grid" class="grid">Grid</a></li>
						<li><a href="#" title="List" class="list">List</a></li>
					</ul>
					<div class="short-by">
						<label>Sort By</label><select><option>Position</option></select>
					</div>
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



