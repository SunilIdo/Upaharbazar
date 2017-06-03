<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
        <table border="1" style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Products"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnaddnew" runat="server" onclick="btnaddnew_Click" 
                        Text="Add New" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="grdvwproducts" runat="server" AutoGenerateColumns="False" 
                        EnableModelValidation="True" Width="388px" >
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Product Name" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                            <asp:BoundField DataField="Prod_status" HeaderText="Status" />
                            <asp:HyperLinkField DataNavigateUrlFields="Product_id" 
                                DataNavigateUrlFormatString="ProductEdit.aspx?ProductId={0}" Text="Edit" />
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

