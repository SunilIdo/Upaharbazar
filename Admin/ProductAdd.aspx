<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="ProductAdd.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table style="width: 100%;" border="1">
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Add Product"></asp:Label>
            </td>
            <td style="width: 231px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label1" runat="server" Text="Product Name:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtpname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label12" runat="server" Text="Category:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:DropDownList ID="drpdwncategory" runat="server" Width="129px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="drpdwncategory" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label2" runat="server" Text="Price:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtprice" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label3" runat="server" Text="Product Order:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtporder" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtporder" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label4" runat="server" Text="Product Status:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:DropDownList ID="drpdwnpstatus" runat="server" Width="124px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Visible</asp:ListItem>
                    <asp:ListItem>Invisible</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="drpdwnpstatus" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label5" runat="server" Text="Product Image:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:FileUpload ID="flupimage" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label6" runat="server" Text="Description:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtdescription" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label7" runat="server" Text="Other Description:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtotherdescription" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label8" runat="server" Text="Page Title:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtpgtitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtpgtitle" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label9" runat="server" Text="Page Description:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtpgdescription" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtpgdescription" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label10" runat="server" Text="Keywords:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtkeywords" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtkeywords" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                <asp:Label ID="Label11" runat="server" Text="Author:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtauthor" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtauthor" ErrorMessage="*"></asp:RequiredFieldValidator>
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

