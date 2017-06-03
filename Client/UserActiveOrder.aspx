<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="UserActiveOrder.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">My Active Orders</h1>
			<div class="fieldset">
	            <h2 class="legend">Your Current Order Information:</h2>
<div id="showactiveorder" runat="server"></div>
<asp:Label ID="lblmessage" runat="server" Text="Label"></asp:Label>
    <%--<asp:GridView ID="GridViewActiveOrders" runat="server" 
        AutoGenerateColumns="False" EnableModelValidation="True" Width="650px">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Items">
            <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
            </asp:BoundField>
            <asp:BoundField DataField="Descript" HeaderText="Detail">
            <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
            </asp:BoundField>
            <asp:BoundField DataField="Quantity" HeaderText="Qty">
            <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
            </asp:BoundField>
            <asp:BoundField DataField="Rate" HeaderText="Price">
            <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>--%>
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

