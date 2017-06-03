<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="PageEdit.aspx.cs" Inherits="Admin_Default" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
<table style="width:100%;" border=1>
        <tr>
            <td style="width: 157px">
                &nbsp;</td>
            <td style="width: 221px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 157px">
                <asp:Label ID="Label1" runat="server" Text="Title:"></asp:Label>
            </td>
            <td style="width: 221px">
                <asp:TextBox ID="txttitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txttitle" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 157px">
                <asp:Label ID="Label2" runat="server" Text="Page Body:"></asp:Label>
            </td>
            <td style="width: 221px">
                 <CKEditor:CKEditorControl ID="CKEditorPageBody" BasePath="~/ckeditor/" 
                     runat="server" Height="272px" Width="600px"></CKEditor:CKEditorControl>
              <%--  <asp:TextBox ID="txtpagebody" runat="server" TextMode="MultiLine"></asp:TextBox>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="CKEditorPageBody" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 160px; width: 157px;">
                <asp:Label ID="Label5" runat="server" Text="Page Title:"></asp:Label>
            </td>
            <td style="width: 221px">
                <asp:TextBox ID="txtpgtitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtpgtitle" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 160px; width: 157px;">
                <asp:Label ID="Label6" runat="server" Text="Page Description:"></asp:Label>
            </td>
            <td style="width: 221px">
                <asp:TextBox ID="txtpgdescription" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtpgdescription" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 160px; width: 157px;">
                <asp:Label ID="Label7" runat="server" Text="Keywords:"></asp:Label>
            </td>
            <td style="width: 221px">
                <asp:TextBox ID="txtkeywords" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtkeywords" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 160px; width: 157px;">
                <asp:Label ID="Label8" runat="server" Text="Author:"></asp:Label>
            </td>
            <td style="width: 221px">
                <asp:TextBox ID="txtauthor" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtauthor" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <tr>
            <td style="margin-left: 160px; width: 157px;">
                <asp:Label ID="Label9" runat="server" Text="Status:"></asp:Label>
            </td>
            <td style="width: 221px">
                <asp:DropDownList ID="DropDownListStatus" runat="server" Height="16px" 
                    Width="130px">
                    <asp:ListItem>--Select One--</asp:ListItem>
                    <asp:ListItem>Visible</asp:ListItem>
                    <asp:ListItem>Invisible</asp:ListItem>
                </asp:DropDownList>
            </td></tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 160px; text-align: right; width: 157px;">
                <asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" 
                    style="text-align: right" Text="Update" />
            </td>
            <td style="text-align: center; width: 221px">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

