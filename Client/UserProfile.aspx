<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">My Profile</h1>
			<div class="fieldset">
	            <h2 class="legend">Your Profile (Do you want to update?):</h2>
                <div class="contact-form-container">
				<div  class="form-title">Your Information</div>
                <ul class="form-fields">
					<li class="left">
                            <asp:Label ID="lblfirstnamefrom" runat="server" Text="First Name:"></asp:Label></br>
								  <asp:TextBox ID="txtfirstnamefrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtfirstnamefrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                         </li>
                           <li class="left">
								<asp:Label ID="lblmiddlenamefrom" runat="server" Text="Middle Name:"></asp:Label><br />
								  <asp:TextBox ID="txtmiddlenamefrom" runat="server"></asp:TextBox>
							 </li>
                            <li class="left">
                            <asp:Label ID="lbllastnamefrom" runat="server" Text="Last Name:"></asp:Label><br />
								<asp:TextBox ID="txtlastnamefrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtlastnamefrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
							  
							</li>

                    <li class="left">
                    <asp:Label ID="lbltitlefrom" runat="server" Text="Title:"></asp:Label><br />
                      <asp:DropDownList ID="drpdwntitlefrom" runat="server" Height="31px" Width="155px">
                                <asp:ListItem>Mr.</asp:ListItem>
                                <asp:ListItem>Mis.</asp:ListItem>
                                <asp:ListItem>Mrs.</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="drpdwntitlefrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
							</li>
                            <li class="left">
                            <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label><br />
                            <asp:DropDownList ID="drpdwngenderfrom" runat="server" Height="31px" Width="155px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="drpdwngenderfrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                           </li>
                            <li class="left">
                            <asp:Label ID="lblcountryfrom" runat="server" Text="Country:"></asp:Label><br />
                            <asp:DropDownList ID="drpdwncountryfrom" runat="server" Height="31px" Width="155px">
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
                            </li>
                            <li class="left">
                             <asp:Label ID="lblcityfrom" runat="server" Text="City:"></asp:Label><br />
                            <asp:TextBox ID="txtcityfrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtcityfrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </li>
                            <li class="left">
                          <asp:Label ID="Label2" runat="server" Text="Tole/Street:"></asp:Label><br />
                            <asp:TextBox ID="txttolestreet" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txttolestreet" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                           </li>
                            <li class="left">
                           <asp:Label ID="lblzippostalfrom" runat="server" Text="Zip/Postal Code:"></asp:Label><br />
                               <asp:TextBox ID="txtzippostalfrom" runat="server"></asp:TextBox> </li>
                            <li class="left">
                           <asp:Label ID="lblhomephonefrom" runat="server" Text="Home Phone:"></asp:Label><br />
                            <asp:TextBox ID="txthomephonefrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txthomephonefrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </li>
                            <li class="left">
                             <asp:Label ID="lblmobilefrom" runat="server" Text="Mobile:"></asp:Label><br />
                            <asp:TextBox ID="txtmobilefrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtmobilefrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </li>
                            <li class="left">
                           <asp:Label ID="lblemailfrom" runat="server" Text="Email:"></asp:Label><br />
                            <asp:TextBox ID="txtemailfrom" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtemailfrom" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                          </li>
							</ul>
                            </div>
                <div class="clear"></div>
                <br /><br /><br /><br /> <br /><br /><br /><br />
				<div class="buttons-set">
					<p class="required">* Required Fields</p>
					<a href="#" title="Back" class="f-left">&laquo; Back</a>
                    <asp:Button ID="btnupdate" class="colors-btn" runat="server" Text="Update" 
                                onclick="btnupdate_Click" style="text-align: center" />
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
    <%--<table style="width: 100%;">
        <tr>
            <td>
                Your Profile (Do you want to update?):</td>
        </tr>
        <tr>
            <td>
               <table style="width:100%;">
                    <tr>
                        <td class="style9">
                            
                        </td>
                        <td class="style10">
                           
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            
                        </td>
                        <td class="style10">
                          
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            
                        </td>
                        <td class="style10">
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                          
                        </td>
                        <td class="style10">
                          
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            
                        </td>
                        <td class="style10">
                        
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                           
                        </td>
                        <td class="style10">
                         
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            
                        </td>
                        <td class="style10">
                       
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            
                        </td>
                        <td class="style10">
                        
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            
                        </td>
                        <td class="style10">
                        
                        
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            
                        </td>
                        <td class="style10">
                           
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                         
                        </td>
                        <td class="style10">
                          
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            
                        </td>
                        <td class="style10">
                       
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td>
                            
                        </td>
        </tr>
    </table>--%>
</asp:Content>

