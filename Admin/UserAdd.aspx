<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="UserAdd.aspx.cs" Inherits="Admin_AddUser" %>

<%@ Register src="wuctry.ascx" tagname="wuctry" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table style="width: 100%;" border="1">
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Add User"></asp:Label>
            </td>
            <td style="width: 231px">
                &nbsp;</td>
            <td>
                
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label1" runat="server" Text="Full Name:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtfullname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtfullname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label12" runat="server" Text="Title:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:DropDownList ID="drpdwntitle" runat="server" Width="129px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Mr.</asp:ListItem>
                    <asp:ListItem>Mis.</asp:ListItem>
                    <asp:ListItem>Mrs.</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="drpdwntitle" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label3" runat="server" Text="Gender:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:DropDownList ID="drpdwngender" runat="server" Width="129px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="drpdwngender" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:DropDownList ID="drpdwnaddress" runat="server" Width="124px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Visible</asp:ListItem>
                    <asp:ListItem>Invisible</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="drpdwnaddress" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                &nbsp;</td>
            <td style="width: 231px">
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

