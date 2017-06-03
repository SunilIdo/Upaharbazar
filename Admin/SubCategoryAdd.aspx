<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="SubCategoryAdd.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table style="width:100%;" border="1">
        <tr>
            <td style="width: 157px">
                <asp:Label ID="Label9" runat="server" Text="Add Sub Category"></asp:Label>
            </td>
            <td style="width: 221px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 157px">
                <asp:Label ID="Label1" runat="server" Text="Category Name:"></asp:Label>
            </td>
            <td style="width: 221px">
                <asp:TextBox ID="txtcatname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcatname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="6">
                <asp:Image ID="imgcategory" runat="server" Height="158px" Width="183px" />
            </td>
        </tr>
        <tr>
            <td style="width: 157px">
                <asp:Label ID="Label2" runat="server" Text="Category Image:"></asp:Label>
            </td>
            <td style="width: 221px">
                <asp:FileUpload ID="flupimage" runat="server" Width="203px" 
                    onload="Page_Load" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="flupimage" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 80px; width: 157px;">
                <asp:Label ID="Label3" runat="server" Text="Category Order:"></asp:Label>
            </td>
            <td style="width: 221px">
                <asp:TextBox ID="txtcatorder" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtcatorder" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px; width: 157px;">
                <asp:Label ID="Label4" runat="server" Text="Category Status:"></asp:Label>
            </td>
            <td style="width: 221px">
                <asp:DropDownList ID="drpdwncatstatus" runat="server" Width="127px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Visible</asp:ListItem>
                    <asp:ListItem>Invisible</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="drpdwncatstatus" ErrorMessage="*"></asp:RequiredFieldValidator>
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
            <td>
                &nbsp;</td>
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 160px; text-align: right; width: 157px;">
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" 
                    style="text-align: right; height: 26px;" Text="Save" />
            </td>
            <td style="text-align: center; width: 221px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

