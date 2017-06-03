<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table border="1" style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Text="Categories"></asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Button ID="btnadnew" runat="server" onclick="btnaddnew_Click" 
                    Text="Add New" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridViewCategory" runat="server" AutoGenerateColumns="False" 
                    EnableModelValidation="True" style="margin-top: 0px">
                    <Columns>
                        <asp:BoundField DataField="Cat_Name" HeaderText="Category Name" />
                        <asp:BoundField DataField="Cat_status" HeaderText="Category Status" />
                        <asp:HyperLinkField DataNavigateUrlFields="Cat_id" 
                            DataNavigateUrlFormatString="CategoryEdit.aspx?CategoryId={0}" 
                            HeaderText="Edit" Text="Edit" />
                        <asp:HyperLinkField DataNavigateUrlFields="Cat_id" 
                            DataNavigateUrlFormatString="SubCategory.aspx?CategoryId={0}" 
                            HeaderText="Sub Category" Text="View" />
                        <asp:HyperLinkField DataNavigateUrlFields="Cat_id" 
                            DataNavigateUrlFormatString="SubCategoryAdd.aspx?CategoryId={0}" 
                            HeaderText="Sub Category" Text="Add" />
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

