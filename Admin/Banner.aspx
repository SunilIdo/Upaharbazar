<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="Banner.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table border="1" style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Text="Banners"></asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Button ID="btnadnew" runat="server" onclick="btnaddnew_Click" 
                    Text="Add New" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grdvwbanner" runat="server" AutoGenerateColumns="False" 
                    EnableModelValidation="True">
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Title" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:BoundField DataField="BannerOrder" HeaderText="Order" />
                        <asp:BoundField DataField="Description" HeaderText="Description" />
                        <asp:HyperLinkField DataNavigateUrlFields="Banner_ID" 
                            DataNavigateUrlFormatString="~/Admin/BannerEdit.aspx?bannerid={0}" HeaderText="Edit" 
                            Text="Edit" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

