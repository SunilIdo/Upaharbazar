<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="RecipientInfoUpdate.aspx.cs" Inherits="Client_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholderHeader" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">My Recipient</h1>
			<div class="fieldset">
	            <h2 class="legend">Your Recipient (Do you want to update?):</h2>
                <div class="contact-form-container">
				<div  class="form-title">Recipient's Information</div>
                <ul class="form-fields">
					<li class="left">
                            <asp:Label ID="Label4" runat="server" for="firstname" Text="First Name:"></asp:Label><br />
								 <asp:TextBox ID="txtfirstnameto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtfirstnameto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                         </li>
                           <li class="left">
								<asp:Label ID="Label6" for="firstname" runat="server" Text="Middle Name:"></asp:Label><br />
								<asp:TextBox ID="txtmiddlenameto" runat="server"></asp:TextBox>
							 </li>
                            <li class="left">
                            <asp:Label ID="Label7" runat="server" Text="Last Name:"></asp:Label><br />
								<asp:TextBox ID="txtlastnameto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="txtlastnameto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
							  
							</li>

                    <li class="left">
                      <asp:Label ID="Label8" runat="server" Text="Title:"></asp:Label><br />
                            <asp:DropDownList ID="drpdwntitleto" runat="server" Height="37px" 
                            Width="154px">
                                <asp:ListItem>Mr.</asp:ListItem>
                                <asp:ListItem>Mis.</asp:ListItem>
                                <asp:ListItem>Mrs.</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ControlToValidate="drpdwntitleto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
							</li>
                            <li class="left">
                            <asp:Label ID="Label10" runat="server" Text="Gender:"></asp:Label><br />
                             <asp:DropDownList ID="drpdwngenderto" runat="server" Height="37px" Width="154px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                ControlToValidate="drpdwngenderto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                           </li>
                            <li class="left">
                            <asp:Label ID="Label11" runat="server" Text="Country:"></asp:Label><br />
                             <asp:DropDownList ID="drpdwncountryto" runat="server" Height="37px" Width="154px">
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                ControlToValidate="drpdwncountryto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </li>
                            <li class="left">
                            <asp:Label ID="Label12" runat="server" Text="City:"></asp:Label><br />
                             <asp:TextBox ID="txtcityto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                ControlToValidate="txtcityto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </li>
                            <li class="left">
                           <asp:Label ID="Label13" runat="server" Text="Tole/Street:"></asp:Label><br />
                             <asp:TextBox ID="txttolestreetto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                ControlToValidate="txttolestreetto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                           </li>
                            <li class="left">
                           <asp:Label ID="Label14" runat="server" Text="Zip/Postal Code:"></asp:Label><br />
                              <asp:TextBox ID="txtzippostalto" runat="server"></asp:TextBox>
                            </li>
                            <li class="left">
                           <asp:Label ID="Label15" runat="server" Text="Home Phone:"></asp:Label><br />
                             <asp:TextBox ID="txthomephoneto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                ControlToValidate="txthomephoneto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </li>
                            <li class="left">
                            <asp:Label ID="Label16" runat="server" Text="Mobile:"></asp:Label><br />
                             <asp:TextBox ID="txtmobileto" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                ControlToValidate="txtmobileto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </li>
                            <li class="left">
                          <asp:Label ID="Label17" runat="server" Text="Email:"></asp:Label><br />
                             <asp:TextBox ID="txtemailto" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                ControlToValidate="txtemailto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
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
    <%--<table>
            <tr>
            <td colspan=2>
            </td>
            </tr>
 <tr>
                        <td class="style2">
                            
                        </td>
                        <td class="style1">
                        <asp:Label ID="lblfirstnameto" runat="server" Text="First Name:"></asp:Label>
                            <asp:TextBox ID="txtfirstnameto" runat="server" Width="126px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtfirstnameto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="lblmiddlenameto" runat="server" Text="Middle Name:"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtmiddlenameto" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="lbllastnameto" runat="server" Text="Last Name:"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtlastnameto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtlastnameto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="lbltitleto" runat="server" Text="Title:"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:DropDownList ID="drpdwntitleto" runat="server">
                                <asp:ListItem>Mr.</asp:ListItem>
                                <asp:ListItem>Mis.</asp:ListItem>
                                <asp:ListItem>Mrs.</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="drpdwntitleto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label1" runat="server" Text="Gender:"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:DropDownList ID="drpdwngenderto" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="drpdwngenderto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="lblcountryto" runat="server" Text="Country:"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:DropDownList ID="drpdwncountryto" runat="server">
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
                                ControlToValidate="drpdwncountryto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="lblcityto" runat="server" Text="City:"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtcityto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtcityto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="Label2" runat="server" Text="Tole/Street:"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txttolestreetto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txttolestreetto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="lblzippostalto" runat="server" Text="Zip/Postal Code:"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtzippostalto" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="lblhomephoneto" runat="server" Text="Home Phone:"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txthomephoneto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txthomephoneto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="lblmobileto" runat="server" Text="Mobile:"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtmobileto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtmobileto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Label ID="lblemailto" runat="server" Text="Email:"></asp:Label>
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtemailto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtemailto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" style="text-align: right">
                            <asp:Button ID="btnupdate" runat="server" Text="Update" 
                                onclick="btnupdate_Click" style="text-align: center" />
                        </td>
                        <td class="style1">
                            &nbsp;</td>
                    </tr>
                    </table>--%>
</asp:Content>

