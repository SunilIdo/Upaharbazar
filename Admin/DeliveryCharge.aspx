<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="DeliveryCharge.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table border="1" style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Text="Delivery Charge"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td style="text-align: right">
                <asp:Button ID="btnaddnew" runat="server" onclick="btnaddnew_Click" 
                    Text="Add New" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
             <asp:GridView ID="grdvwoccasion" runat="server" AutoGenerateColumns="False" 
        EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="District" HeaderText="Destination" />
            <asp:BoundField DataField="ExtraCharge" HeaderText="Extra Charge" />
            <asp:BoundField DataField="Min_Delivery_Time" HeaderText="Min Delivery Time" />
            <asp:HyperLinkField DataNavigateUrlFields="Charge_ID" 
                DataNavigateUrlFormatString="~/Admin/DeliveryChargeEdit.aspx?chargeid={0}" 
                Text="Edit" />
        </Columns>
    </asp:GridView>
            </td>
                
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
        </tr>
    </table>
</asp:Content>

