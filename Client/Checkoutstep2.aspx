<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="Checkoutstep2.aspx.cs" Inherits="Client_Default3" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHeader" Runat="Server">
   
    <title>CheckOutStep2</title>

      <script type="text/javascript">
//    alert($('selector').length)
          $(document).ready(function () {
              $("input[id$='txtDate']").datepicker()
          });
     
    </script>
     
         
   <%-- <style type="text/css">
     thead
    {
        display:block;
       }
        tbody
        {
            display:block;
           
            }
    </style>--%>
   <%-- <style type="text/css">
 .ui-datepicker{font-size:8pt !important}
    </style>--%>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<!--Content Block-->
<section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">Checkout Step 2 </h1>
			<div class="fieldset">
	            <h2 class="legend">Your Recipient</h2>
				<ul class="form-list">
					<li class="fields">
						<div class="customer-name">
							<div class="input-box name-firstname">
								<asp:Label ID="Label3" runat="server" Text="Your Old Recipient(s):"></asp:Label>
								<asp:DropDownList ID="drpdwnrecipients" runat="server" 
                                ontextchanged="drpdwnrecipients_TextChanged" 
                                onselectedindexchanged="drpdwnrecipients_SelectedIndexChanged" 
                    AutoPostBack="True" Height="37px" Width="154px">
                            </asp:DropDownList>
							</div>	
	                        </div>
                            </li>
				</ul>
                <br />
                <h2 class="legend">Add New Recipient</h2>
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
                <br /><br />  <br /><br />
                <h2 class="legend">Delivery and Other Information</h2>
                <div class="contact-form-container">
                <ul class="form-fields">
					<li class="left">
                  	<asp:Label ID="Label18" runat="server" 
                    Text="Choose Your Delivery Day(In Local Nepali Standard Time):"></asp:Label>
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                   </li>
                    <li class="left">
                    <asp:Label ID="Label19" runat="server" Text="Message To Your Recipient(s):"></asp:Label><br />
                    <asp:TextBox ID="txtmessage" runat="server" 
                TextMode="MultiLine"></asp:TextBox>
                    </li>
                  <li class="left">
                    <asp:Label ID="Label20" runat="server" Text="For What Occasion you are sending Gift:"></asp:Label><br />
                    <asp:DropDownList ID="drpdwnoccasion" runat="server" 
                Height="37px" Width="176px">
                </asp:DropDownList>
				</li></ul>
                </div>
                <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br />
				<div class="buttons-set">
					<p class="required">* Required Fields</p>
					<a href="#" title="Back" class="f-left">&laquo; Back</a>
                    <asp:Button ID="Button1" class="colors-btn" runat="server" onclick="btnnext_Click" Text="Next" />
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
     <%--<table style="width:100%;">
        <tr>
            <td class="style9" style="width: 427px">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" style="width: 427px">
                <asp:Label ID="Label5" runat="server" Text="Your Old Recipient(s):"></asp:Label></td>
            <td style="text-align: left">
                <asp:DropDownList ID="drpdwnrecipients" runat="server" 
                                ontextchanged="drpdwnrecipients_TextChanged" 
                                onselectedindexchanged="drpdwnrecipients_SelectedIndexChanged" 
                    AutoPostBack="True">
                            </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 427px">
                 New Recipient:</td>
            <td style="text-align: left">
                 &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" style="width: 427px">
                  <asp:Label ID="lblfirstnameto" runat="server" Text="First Name:"></asp:Label></td>
            <td style="text-align: left">
                <asp:TextBox ID="txtfirstnameto" runat="server" Width="126px"></asp:TextBox>
                          
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtfirstnameto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        <td class="style9" style="width: 427px">
          <asp:Label ID="lblmiddlenameto" runat="server" Text="Middle Name:"></asp:Label>
        </td>
        <td style="text-align: left"><asp:TextBox ID="txtmiddlenameto" runat="server"></asp:TextBox></td>
         </tr>
          <tr>
        <td class="style9" style="width: 427px">
          <asp:Label ID="lbllastnameto" runat="server" Text="Last Name:"></asp:Label>
        </td>
        <td style="text-align: left"> <asp:TextBox ID="txtlastnameto" runat="server"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtlastnameto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
         </tr>
            <tr>
        <td class="style9" style="width: 427px">
           <asp:Label ID="lbltitleto" runat="server" Text="Title:"></asp:Label>
        </td>
        <td style="text-align: left"> <asp:DropDownList ID="drpdwntitleto" runat="server">
                                <asp:ListItem>Mr.</asp:ListItem>
                                <asp:ListItem>Mis.</asp:ListItem>
                                <asp:ListItem>Mrs.</asp:ListItem>
                            </asp:DropDownList>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="drpdwntitleto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
         </tr>
            <tr>
        <td class="style9" style="width: 427px">
         <asp:Label ID="Label1" runat="server" Text="Gender:"></asp:Label>
        </td>
        <td style="text-align: left">  <asp:DropDownList ID="drpdwngenderto" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="drpdwngenderto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
         </tr>
            <tr>
        <td class="style9" style="width: 427px">
            <asp:Label ID="lblcountryto" runat="server" Text="Country:"></asp:Label>
        </td>
        <td style="text-align: left"><asp:DropDownList ID="drpdwncountryto" runat="server">
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
                                ControlToValidate="drpdwncountryto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
         </tr>
            <tr>
        <td class="style9" style="width: 427px">
         <asp:Label ID="lblcityto" runat="server" Text="City:"></asp:Label>
        </td>
        <td style="text-align: left"><asp:TextBox ID="txtcityto" runat="server"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtcityto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
         </tr>
            <tr>
        <td class="style9" style="width: 427px">
           <asp:Label ID="Label2" runat="server" Text="Tole/Street:"></asp:Label>
        </td>
        <td style="text-align: left"> <asp:TextBox ID="txttolestreetto" runat="server"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txttolestreetto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
         </tr>
            <tr>
        <td class="style9" style="width: 427px">
          <asp:Label ID="lblzippostalto" runat="server" Text="Zip/Postal Code:"></asp:Label>
        </td>
        <td style="text-align: left"> <asp:TextBox ID="txtzippostalto" runat="server"></asp:TextBox></td>
         </tr>
            <tr>
        <td class="style9" style="width: 427px">
           <asp:Label ID="lblhomephoneto" runat="server" Text="Home Phone:"></asp:Label>
        </td>
        <td style="text-align: left"><asp:TextBox ID="txthomephoneto" runat="server"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txthomephoneto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
         </tr>
            <tr>
        <td class="style9" style="width: 427px">
            <asp:Label ID="lblmobileto" runat="server" Text="Mobile:"></asp:Label>
        </td>
        <td style="text-align: left"> <asp:TextBox ID="txtmobileto" runat="server"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtmobileto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
         </tr>
            <tr>
        <td class="style9" style="width: 427px">
           <asp:Label ID="lblemailto" runat="server" Text="Email:"></asp:Label>
        </td>
        <td style="text-align: left"> <asp:TextBox ID="txtemailto" runat="server"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtemailto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></td>
         </tr>
            <tr>
        <td style="width: 427px">
          Deliveries,Payment and Other Confirmation:
        </td>
        <td style="text-align: left">
            &nbsp;</td>
         </tr>
            <tr>
        <td class="style9" style="width: 427px">
          Delivery Day:<asp:Label ID="Label9" runat="server" 
                    Text="Choose Your Delivery Day(In Local Nepali Standard Time):"></asp:Label>
        </td>
        <td style="text-align: left"> <asp:TextBox ID="txtDate" runat="server">
        </asp:TextBox></td>
         </tr>
            <tr>
        <td style="width: 427px">
            Message To Your Recipient(s):
        </td>
        <td style="text-align: left"> <asp:TextBox ID="txtmessage" runat="server" 
                TextMode="MultiLine"></asp:TextBox></td>
         </tr>
            <tr>
        <td style="width: 427px">
          For What Occasion you are sending Gift:
        </td>
        <td style="text-align: left"> <asp:DropDownList ID="drpdwnoccasion" runat="server" 
                Height="16px" Width="176px">
                </asp:DropDownList></td>
         </tr>
            <tr>
        <td style="width: 427px">
            &nbsp;</td>
        <td style="text-align: left"> <asp:Button ID="btnnext" runat="server" onclick="btnnext_Click" Text="Next" /></td>
         </tr>
           
    </table>--%>
   
</asp:Content>

