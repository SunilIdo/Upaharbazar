<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="UserPastOrder.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">My Past Orders</h1>
			<div class="fieldset">
	            <h2 class="legend"> Your Past Order Information:</h2>
   <asp:GridView ID="GridViewPastOrder" runat="server" AutoGenerateColumns="False" 
                    EnableModelValidation="True" Height="346px" Width="918px">
                    <Columns>
                        <asp:BoundField DataField="Order_ID" HeaderText="Order ID" >
                        <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Order_Date" HeaderText="Order Date" 
                            DataFormatString="{0:d}" >
                        <HeaderStyle BorderStyle="Solid" Font-Bold="True" 
                            HorizontalAlign="Left" VerticalAlign="Middle" Font-Size="Large" />
                        <ItemStyle BorderStyle="Dotted" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Full_Name" HeaderText="Recipient" >
                        <HeaderStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Left" 
                            VerticalAlign="Middle" Font-Size="Large" />
                        <ItemStyle BorderStyle="Dotted" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Occasion_Name" HeaderText="Occasion" >
                        <HeaderStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Left" 
                            VerticalAlign="Middle" Font-Size="Large" />
                        <ItemStyle BorderStyle="Dotted" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Delivery_Date" HeaderText="Delivery Date" 
                            DataFormatString="{0:d}" >
                        <HeaderStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Left" 
                            VerticalAlign="Middle" Font-Size="Large" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Total_Amount" HeaderText="Total Amount">
                        <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:HyperLinkField DataNavigateUrlFields="Order_ID" 
                            DataNavigateUrlFormatString="~/Client/UserPastOrderDetail.aspx?Order_ID={0}" 
                            HeaderText="Go to Detail" NavigateUrl="~/Client/UserPastOrderDetail.aspx" 
                            Text="View Detail" />
                    </Columns>
                </asp:GridView>
                
            <asp:Label ID="lblmessage" runat="server" Text="Label"></asp:Label>
           
             <br /><br />
				<div class="buttons-set">
					<a href="#" title="Back" class="f-left">&laquo; Back</a>
                   
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

