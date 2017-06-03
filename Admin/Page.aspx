<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="Page.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
        <table border="1" style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Pages"></asp:Label>
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
                    <asp:GridView ID="grdvwpages" runat="server" AutoGenerateColumns="False" 
            EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:BoundField DataField="Page_Body" HeaderText="Page Body" />
                <asp:HyperLinkField DataNavigateUrlFields="Page_ID" 
                    DataNavigateUrlFormatString="~/Admin/PageEdit.aspx?pageid={0}" 
                    NavigateUrl="~/Admin/PageEdit.aspx" Text="Edit" />
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
        </table></p>

</asp:Content>

