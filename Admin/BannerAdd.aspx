<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="BannerAdd.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table style="width: 100%;" border="1">
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Add Banner"></asp:Label>
            </td>
            <td style="width: 294px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label14" runat="server" Text="Title:"></asp:Label>
            </td>
            <td style="width: 294px">
                <asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txttitle" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label1" runat="server" Text="File Name:"></asp:Label>
            </td>
            <td style="width: 294px">
                <asp:FileUpload ID="flupbanner" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="flupbanner" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label12" runat="server" Text="Status:"></asp:Label>
            </td>
            <td style="width: 294px">
                <asp:DropDownList ID="drpdwnstatus" runat="server" Width="129px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Visible</asp:ListItem>
                    <asp:ListItem>Invisible</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="drpdwnstatus" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label2" runat="server" Text="Display Order:"></asp:Label>
            </td>
            <td style="width: 294px">
                <asp:TextBox ID="txtdisplayorder" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdisplayorder" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label3" runat="server" Text="Description:"></asp:Label>
            </td>
            <td style="width: 294px">
                <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtdescription" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                &nbsp;</td>
            <td style="width: 294px">
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>

</asp:Content>

