<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="Checkoutstep3.aspx.cs" Inherits="Client_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
 <!--Content Block-->
<section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">Checkout Step 3 </h1>
			<div class="fieldset">
  <h2 class="legend">

                Payment and other Confirmation:</h2>
  <ul class="form-list">
					<li class="fields">
                    <asp:RadioButton ID="rdbtnpaypal" runat="server" GroupName="rdgrppaymentmethod" 
                                
                    Text="Paypal/Debit,Credit Card Pay with any major international credit/debit cards and paypal" 
                    BorderStyle="Groove" Height="60px" />
                    </li>
                    	<li class="fields">
                        <asp:RadioButton ID="rdbtncreditdebitcard" runat="server" 
                                GroupName="rdgrppaymentmethod" Text="Credit/Debit Card" 
                    BorderStyle="Groove" Height="60px" Width="551px" />
                        </li>
                        	<li class="fields">
                            <asp:RadioButton ID="rdbtnphoneorder" runat="server" 
                                GroupName="rdgrppaymentmethod" Text="Phone Order" 
                    BorderStyle="Groove" Height="60px" Width="551px" />
                            </li>
                            	<li class="fields">
                                <asp:RadioButton ID="rdbtnbonuspaypoints" runat="server" 
                                GroupName="rdgrppaymentmethod" 
                                
                    Text="Bonus Pay-Points(Pay with bonus pay points earned from previous gift orders) " 
                    BorderStyle="Groove" Height="60px" Width="550px" />
                                </li>
                                	<li class="fields">
                                    <asp:RadioButton ID="rdbtncashondelivery" runat="server" 
                    GroupName="rdgrppaymentmethod" Text="Cash on Delivery" 
                    BorderStyle="Groove" Height="60px" Width="551px" />
                                    </li>
                    </ul>
<div class="buttons-set">
					<p class="required">* Required Fields</p>
					<a href="Checkoutstep2.aspx" title="Back" class="f-left">&laquo; Back</a>
                    <asp:Button ID="btnnext" runat="server" class="colors-btn" Text="Next" onclick="btnnext_Click" />
					<div class="clear"></div>
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

