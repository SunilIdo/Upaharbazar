<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="OrderDetail.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
<div id="showorderdetail" runat="server" align="left">
    <table style="width:100%;" align="center">
        <tr>
            <td colspan="5">
                <asp:Label ID="Label1" runat="server" Text="Order ID:"></asp:Label>
&nbsp;
                <asp:Label ID="lblorderid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Sender:"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Recipient:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Name:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblsendername" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Name:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblreceivername" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblsenderaddress" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblreceiveraddress" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Contact No:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblsendercontact" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Contact No:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblreceivercontact" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Order Date:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblorderdate" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Delivery Date:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbldeliverydate" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Status:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblstatus" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
            <div id="orderproducts" runat="server">
            </div>
              </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Message:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblmessage" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Occasion:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbloccasion" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
      <%ReturnOrderProduct(); %>
    </div>
</asp:Content>

