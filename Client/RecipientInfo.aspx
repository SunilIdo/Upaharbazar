<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="RecipientInfo.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">My Recipients</h1>
			<div class="fieldset">
	            <h2 class="legend">Recipient's List</h2>
<asp:GridView ID="GridViewRecipientInfo" runat="server" 
                    AutoGenerateColumns="False" EnableModelValidation="True" 
        Height="398px" Width="776px">
                    <Columns>
                        <asp:BoundField DataField="Full_Name" HeaderText="Name" >
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Left" VerticalAlign="Middle" 
                            Font-Size="Large" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="City" HeaderText="Address" >
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Left" VerticalAlign="Middle" 
                            Font-Size="Large" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Mobile_No" HeaderText="Mobile" >
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Left" VerticalAlign="Middle" 
                            Font-Size="Large" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Email_ID" HeaderText="Email" >
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Left" VerticalAlign="Middle" 
                            Font-Size="Large" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:HyperLinkField DataNavigateUrlFields="Recipient_ID" 
                            DataNavigateUrlFormatString="~/Client/RecipientInfoUpdate.aspx?Recipient_ID={0}" 
                            NavigateUrl="~/Client/RecipientInfoUpdate.aspx" Text="Edit" >
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Left" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
                <br /><br /><br /><br />
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

