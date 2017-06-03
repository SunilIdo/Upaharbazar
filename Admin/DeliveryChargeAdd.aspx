<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="DeliveryChargeAdd.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table style="width: 100%;" border="1">
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Add Delivery Charge"></asp:Label>
            </td>
            <td style="width: 231px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label1" runat="server" Text="Destination:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtdestination" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtdestination" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label12" runat="server" Text="Extra Charge:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtextracharge" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtextracharge" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label3" runat="server" Text="Min Delivery Time:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtmindeliverytime" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtmindeliverytime" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                &nbsp;</td>
            <td style="width: 231px">
                &nbsp;</td>
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

