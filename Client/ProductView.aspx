﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" Runat="Server">
    <title>Product View</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
   <!--Content Block-->
<section class="content-wrapper">
	<div class="content-container container">
		<div class="breadcrum-container">
			<ul>
				<li><a href="#" title="Home">Home</a></li>
				<li>Htc  Mobile  1120</li>
			</ul>
		</div>
		<div class="main">
			
			<div class="product-info-box">
				<div class="product-essential">
					<div class="product-img-box">
						<p class="product-image-zoom">
						<asp:Image ID="ProductImage" runat="server"></asp:Image>
						</p>
						<%--<p>
							Click on above image to view full picture
						</p>--%>
						<div class="img-slider">
							<a href="#" title="Prev" class="prev slider-btn"><img src="images/prev_img_btn.png" title="Prev" alt="Prev" /></a>
							<a href="#" title="Next" class="next slider-btn"><img src="images/next_img_btn.png" title="Next" alt="Next" /></a>
							<ul id="moreView" runat="server">
							<%--	<li><a class="ajax" href="images/view_img.png"><img src="images/small_img.png" alt="" title="" /></a></li>
                                <li><a class="ajax" href="images/view_img.png"><img src="images/small_img.png" alt="" title="" /></a></li>
		                        <li><a class="ajax" href="images/view_img.png"><img src="images/small_img.png" alt="" title="" /></a></li>
                                <li><a class="ajax" href="images/view_img.png"><img src="images/small_img.png" alt="" title="" /></a></li>
                                <li><a class="ajax" href="images/view_img.png"><img src="images/small_img.png" alt="" title="" /></a></li>
		                        <li><a class="ajax" href="images/view_img.png"><img src="images/small_img.png" alt="" title="" /></a></li>		--%>		
							</ul>
						</div>
					</div>
					<div class="product-shop">
						<h3 id="productname" class="product-name" runat="server">
                        <asp:Label ID="lblproductname" runat="server" Text="Label"></asp:Label>
                        </h3>
						<div class="price-box">
                		    <span class="price" id="Productprice" runat="server">
                           Rs.  <asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label>
                            </span>
							<span class="availability">In stock</span>
				        </div>
						<%--<div class="model-block">
							<p>
								<span>SKU: </span>20
							</p>
							<p>
								<span>BRANDS: </span>HTC
							</p>
						</div>
						<div class="first-review">
							Be the first to review this product
						</div>--%>
						<%--<div class="color-size-block">
							<div class="label-row">
								<label><em>*</em> color</label>
								<span class="required">* Required Fields</span>
							</div>
							<div class="select-row">
								<select><option>-- Please Select --</option></select>
							</div>
							<div class="label-row">
								<label><em>*</em> size</label>
							</div>
							<div class="select-row">
								<select><option>-- Please Select --</option></select>
							</div>
						</div>--%>
						<div class="add-to-cart-box">
							<span class="qty-box">
								<label for="qty">Qty:</label>
								<a href="javascript:void(0)" title="" class="prev add"><img src="images/qty_prev.png" title="" alt="add" />‹</a>
								<asp:TextBox ID="txtqty" runat="server" class="input-text qty" MaxLength="12">1</asp:TextBox>
								<a href="javascript:void(0)" title="" class="next dec add"><img src="images/qty_next.png" title="" alt="" />›</a>
							</span>
                            <script type="text/javascript">
                                jQuery(document).ready(function () {
                                    jQuery(".ajax").colorbox();
                                });
                                jQuery(function () {
                                    jQuery(".add").click(function () {
                                        var jQueryadd = jQuery(this);
                                        var oldValue = jQueryadd.parent().find("input").val();
                                        var newVal = 0;

                                        if (jQueryadd.text() == "›") {
                                            newVal = parseFloat(oldValue) + 1;
                                            // AJAX save would go here
                                        } else {
                                            // Don't allow decrementing below zero
                                            if (oldValue >= 1) {
                                                newVal = parseFloat(oldValue) - 1;
                                                // AJAX save would go here
                                            }
                                            if (oldValue == 0) {
                                                newVal = parseFloat(oldValue);
                                            }
                                        }
                                        jQueryadd.parent().find("input").val(newVal);
                                    });


                                });
                            </script>
							
                    <asp:Button ID="btnaddtocart" class="form-button" runat="server" Text="Add To Cart" 
                        onclick="btnaddtocart_Click" />
                           
							<ul class="add-to-box">
								<li><a href="#" title="Add to Wishlist" class="add-wishlist">Add to Wishlist</a></li>
								<li><a href="#" title="Add to Compare" class="add-compare">Add to Compare</a></li>
								<li><a href="#" title="Email to a Friend" class="email-friend">Email to a Friend</a></li>
								<li class="last"><a href="images/size_chart.gif" title="Size Guide" class="size-guide ajax">Size Guide</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
            <aside class="right">
				<ol class="pro-slider-btn">
					<li><a href="#" title="Prev"><img src="images/pro_prev_btn.png" title="Prev" alt="Prev" /></a></li>
					<li><a href="#" title="Next"><img src="images/pro_next_btn.png" title="Next" alt="Next" /></a></li>
				</ol>
				<ul class="right-img">
					<li><a href="#" title="Image"><img src="images/view_right_img01.png" title="Image" alt="Image" /></a></li>
					<li><a href="#" title="Image"><img src="images/view_right_img02.png" title="Image" alt="Image" /></a></li>
					<li><a href="#" title="Image"><img src="images/view_right_img03.png" title="Image" alt="Image" /></a></li>
				</ul>
			</aside>
			<section  class="product-collateral">
            	<script type="text/javascript">
            	    $(function () {
            	        var tabContainers = $('section.product-collateral > div.commonContent');
            	        tabContainers.hide().filter(':first').show();
            	        $('section.product-collateral ul.tab-block a').click(function () {
            	            tabContainers.hide();
            	            tabContainers.filter(this.hash).show();
            	            $('section.product-collateral ul.tab-block a').removeClass('active');
            	            $(this).addClass('active');
            	            return false;
            	        }).filter(':first').click();
            	    });
					</script>
				<ul class="tab-block">
					<li><a href="#pro-detail" title="Description" class="active">Description</a></li>
					<li><a href="#pro-review" title="Reviews">Reviews</a></li>
					<li><a href="#pro-tags" title="Product Tags">Product Tags</a></li>
					<li class="video-box"><a href="#pro-video" title="Video Box">Video Box</a></li>
				</ul>
				<div id="pro-detail" class="pro-detail commonContent">
					<asp:Label ID="lblProductDescription" runat="server" Text="Label"></asp:Label>
				</div>
                
                <div id="pro-review" class="pro-detail commonContent">
					<p>
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset 
					</p>
				</div>
                
                <div id="pro-tags" class="pro-detail commonContent">
					<p>
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset
					</p>
				</div>
                <div id="pro-video" class="pro-detail commonContent">
					<p>
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset 
					</p>
				</div>
                
                
                
                
			</section>
			<%--<div class="like-pro-block">
				<div class="title-block">
					<h2>You may also like</h2>
				</div>
				<div id="likepro" class="like-pro" runat="server">
					
				</div>
			</div>--%>
			<div class="related-pro-block">
				<div class="title-block">
					<h2>Related Products</h2>
				</div>
				<div id="relatedpro" class="related-pro" runat="server">
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

