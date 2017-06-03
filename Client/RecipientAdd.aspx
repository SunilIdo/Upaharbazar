<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="RecipientAdd.aspx.cs" Inherits="Client_Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<table>
<tr><td colspan=2>New Recipient:</td></tr>
 <tr>
                        <td class="style9">
                            <asp:Label ID="lblfirstnameto" runat="server" Text="First Name:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtfirstnameto" runat="server" Width="126px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtfirstnameto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblmiddlenameto" runat="server" Text="Middle Name:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtmiddlenameto" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lbllastnameto" runat="server" Text="Last Name:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtlastnameto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtlastnameto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lbltitleto" runat="server" Text="Title:"></asp:Label>
                        </td>
                        <td class="style10">
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
                        <td class="style9">
                            <asp:Label ID="Label1" runat="server" Text="Gender:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:DropDownList ID="drpdwngenderto" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="drpdwngenderto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblcountryto" runat="server" Text="Country:"></asp:Label>
                        </td>
                        <td class="style10">
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
                        <td class="style9">
                            <asp:Label ID="lblcityto" runat="server" Text="City:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtcityto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtcityto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="Label2" runat="server" Text="Tole/Street:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txttolestreetto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txttolestreetto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblzippostalto" runat="server" Text="Zip/Postal Code:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtzippostalto" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblhomephoneto" runat="server" Text="Home Phone:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txthomephoneto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txthomephoneto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblmobileto" runat="server" Text="Mobile:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtmobileto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtmobileto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="lblemailto" runat="server" Text="Email:"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="txtemailto" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="txtemailto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9" style="text-align: right">
                            <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                                onclick="btnsubmit_Click" style="text-align: center" />
                        </td>
                        <td class="style10">
                            &nbsp;</td>
                    </tr>
                    </table>
</asp:Content>


