<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="FeaturedItemAdd.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table border="1" style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Text="Categories"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridViewCategory" runat="server" AutoGenerateColumns="False" 
                    EnableModelValidation="True">
                    <Columns>
                        <asp:BoundField DataField="Cat_Name" HeaderText="Category Name" />
                        <asp:BoundField DataField="Cat_status" HeaderText="Category Status" />
                        <asp:HyperLinkField DataNavigateUrlFields="Cat_id" 
                            DataNavigateUrlFormatString="ProductList.aspx?CategoryId={0}" 
                            HeaderText="Products" Text="View" />
                    </Columns>
                </asp:GridView>
            </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

