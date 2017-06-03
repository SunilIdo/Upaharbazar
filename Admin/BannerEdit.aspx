<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="BannerEdit.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table style="width: 100%;" border="1">
        <tr>
            <td style="width: 95px">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Edit Banner"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>

        </tr>
        <tr>
         <td style="width: 95px">
                <asp:Label ID="Label14" runat="server" Text="Title:"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txttitle" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 95px">
                <asp:Label ID="Label1" runat="server" Text="File Name:"></asp:Label>
            </td>
            <td class="style2">
                <asp:FileUpload ID="flupbanner" runat="server" />
            </td>
            <td rowspan="2">
                <asp:Image ID="imgbanner" runat="server" Height="56px" Width="251px" />
            </td>
        </tr>
        <tr>
            <td style="width: 95px">
                <asp:Label ID="Label12" runat="server" Text="Status:"></asp:Label>
            </td>
            <td class="style2">
                <asp:DropDownList ID="drpdwnstatus" runat="server" Width="129px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Visible</asp:ListItem>
                    <asp:ListItem>Invisible</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="drpdwnstatus" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 95px">
                <asp:Label ID="Label2" runat="server" Text="Display Order:"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtdisplayorder" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdisplayorder" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 95px;">
                <asp:Label ID="Label3" runat="server" Text="Description:"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtdescription" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 95px;">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" Text="Update" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>

</asp:Content>

