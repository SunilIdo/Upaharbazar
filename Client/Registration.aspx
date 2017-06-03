<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Client_Default2" %>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholderHeader" Runat="Server">
     <style type="text/css">
         .style2
         {
             width: 133px;
         }
     </style>
</asp:Content>
 <asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<%--<style type="text/css">
    .StyleRegForm1
    {
        text-align: center;
    }
    .StyleRegForm2
    {
        width: 163px;
    }
    .style9
    {
        text-align: left;
    }
    .style10
    {
        width: 196px;
    }
</style>--%>
<!--Content Block-->
<section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">Create an Account</h1>
			<div class="fieldset">
	            <h2 class="legend">Personal Information</h2>
                <table style="width:100%;">
                   <tr>
                        <td class="style9">
                            <asp:Label ID="lblfirstnamefrom" runat="server" Text="First Name:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtfirstnamefrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtfirstnamefrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblmiddlenamefrom" runat="server" Text="Middle Name:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtmiddlenamefrom" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lbllastnamefrom" runat="server" Text="Last Name:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtlastnamefrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtlastnamefrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lbltitlefrom" runat="server" Text="Title:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:DropDownList ID="drpdwntitlefrom" runat="server">
                                <asp:ListItem>Mr.</asp:ListItem>
                                <asp:ListItem>Mis.</asp:ListItem>
                                <asp:ListItem>Mrs.</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="drpdwntitlefrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:DropDownList ID="drpdwngenderfrom" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="drpdwngenderfrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblcountryfrom" runat="server" Text="Country:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:DropDownList ID="drpdwncountryfrom" runat="server">
                                <asp:ListItem>Afganistan</asp:ListItem>
                                <asp:ListItem>America</asp:ListItem>
                                <asp:ListItem>Bangaladesh</asp:ListItem>
                                <asp:ListItem>Bhutan</asp:ListItem>
                                <asp:ListItem>China</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Nepal</asp:ListItem>
                                <asp:ListItem>Pakistan</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="drpdwncountryfrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblcityfrom" runat="server" Text="City:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtcityfrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtcityfrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="Label2" runat="server" Text="Tole/Street:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txttolestreet" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txttolestreet" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblzippostalfrom" runat="server" Text="Zip/Postal Code:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtzippostalfrom" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblhomephonefrom" runat="server" Text="Home Phone:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txthomephonefrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txthomephonefrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblmobilefrom" runat="server" Text="Mobile:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtmobilefrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtmobilefrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblemailfrom" runat="server" Text="Email:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtemailfrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtemailfrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    </table>
				<ul class="form-list">
					<li>
					<div class="clear"></div>
					</li>
					<li class="control">
						<div class="input-box">
							<input type="checkbox" class="checkbox" id="is_subscribed" value="1" title="Sign Up for Newsletter" name="is_subscribed">
							<label for="is_subscribed">Sign Up for Newsletter</label>
						</div>
						<div class="clear"></div>
					</li>
				</ul>
				<h2 class="legend">Login Information</h2>
						<div class="customer-name">
                    <table>
                        <tr>
                        <td class="style9">
                            <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="txtpassword" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                 
                    <tr>
                        <td class="style9">
                            <asp:Label ID="Label4" runat="server" Text="Confirm Password:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ControlToValidate="txtconfirmpassword" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    </table>

							<div class="clear"></div>
						</div>
					
					<div class="buttons-set">
					<p class="required">* Required Fields</p>
					<a href="Login.aspx" title="Back" class="f-left">&laquo; Back</a>
                    <asp:Button class="colors-btn" ID="btnsubmit" runat="server" Text="Submit" 
                                onclick="btnsubmit_Click" style="text-align: center" />
                        					
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

