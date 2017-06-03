<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true"
    CodeFile="CheckoutConfirmOrders.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="Server">
    <section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">Orders Review</h1>
			<div class="fieldset">
	            <h2 class="legend">Confirm your Orders</h2>
    <asp:GridView ID="GridViewOrders" runat="server" AutoGenerateColumns="False" 
        EnableModelValidation="True" Height="21px" Width="775px" 
        onrowdeleted="GridViewOrders_RowDeleted" 
        onrowdeleting="GridViewOrders_RowDeleting" 
                    onrowdatabound="GridViewOrders_RowDataBound">
        <Columns>
            <asp:BoundField HeaderText="Items" DataField="Name" >
            <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Detail" DataField="Descript" >
            <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Qty" DataField="Quantity" >
            <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Price" DataField="Price" >
            <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
            </asp:BoundField>
           <asp:TemplateField HeaderText="Delete">
<ItemTemplate><asp:Button CommandName='<%#Eval("OP_ID") %>' CommandArgument='<%#Eval("OP_ID")%>' ID="btndelete" OnCommand="btndelete_Command" runat="server" Text="Delete"></asp:Button>
</ItemTemplate>
           </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br /><br /><br /><br /> <br /><br /><br /><br />
				<div class="buttons-set">
					<a href="#" title="Back" class="f-left">&laquo; Back</a>
                    <asp:Button ID="btnnext" class="colors-btn" runat="server" Text="Next" 
        onclick="btnnext_Click"/>
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
    <%-- <div id="ShowOrderDetail" runat="server"></div>--%>
</asp:Content>
