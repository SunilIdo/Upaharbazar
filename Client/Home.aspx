<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <!--Banner Block-->
    <section class="banner-wrapper">
              <div class="banner-block container">
                <div class="flexslider">
                <%=ReturnSlideImages() %>
                       </div>
                <ul class="banner-add">
                  <li class="add1"><a href="#" title=""><img title="add1" alt="add1" src="images/static1.jpg" /></a></li>
                  <li class="add2"><a href="#" title=""><img title="add2" alt="add2" src="images/static2.jpg" /></a></li>
                </ul>
              </div>
            </section>
    <!--Content Block-->
    <section class="content-wrapper">
              <div class="content-container container">
               <div class="heading-block">
                  <h1>New Product</h1>
                </div>
                <div id ="div1" class="new-product-block" runat="server">
                  <%=ReturnProduct() %>
                 
                </div>
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
    </div>
    <!--Quick view Block-->
</asp:Content>
