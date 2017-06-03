<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="Occasion.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table border="1" style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Text="Occasions"></asp:Label>
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
            <asp:BoundField DataField="Occasion_Name" HeaderText="Occasion" />
            <asp:BoundField DataField="Occasion_Date" HeaderText="Occasion Date" />
            <asp:BoundField DataField="Descript" HeaderText="Description" />
            <asp:HyperLinkField DataNavigateUrlFields="Occasion_ID" 
                DataNavigateUrlFormatString="~/Admin/OccasionEdit.aspx?OID={0}" 
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

