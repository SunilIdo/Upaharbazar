<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Default" %>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td>
                Orders To be Paid:</td>
        </tr>
        <tr>
            <td>
                &nbsp;
               <asp:GridView ID="GridViewTobePaid" runat="server" AutoGenerateColumns="False" 
                    EnableModelValidation="True" Height="16px" Width="931px">
                    <Columns>
                        <asp:BoundField DataField="Order_ID" HeaderText="Order ID" >
                        <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Order_Date" HeaderText="Order Date" 
                            DataFormatString="{0:d}" >
                        <HeaderStyle BorderStyle="Solid" Font-Bold="True" 
                            HorizontalAlign="Left" VerticalAlign="Middle" Font-Size="Large" />
                        <ItemStyle BorderStyle="Dotted" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Full_Name" HeaderText="Recipient" >
                        <HeaderStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Left" 
                            VerticalAlign="Middle" Font-Size="Large" />
                        <ItemStyle BorderStyle="Dotted" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Occasion_Name" HeaderText="Occasion" >
                        <HeaderStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Left" 
                            VerticalAlign="Middle" Font-Size="Large" />
                        <ItemStyle BorderStyle="Dotted" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Delivery_Date" HeaderText="Delivery Date" 
                            DataFormatString="{0:d}" >
                        <HeaderStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Left" 
                            VerticalAlign="Middle" Font-Size="Large" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Total_Amount" HeaderText="Total Amount">
                        <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:HyperLinkField DataNavigateUrlFields="Order_ID" 
                            DataNavigateUrlFormatString="~/Admin/OrderDetail.aspx?Order_ID={0}" 
                            HeaderText="Go to Detail" NavigateUrl="~/Admin/OrderDetail.aspx" 
                            Text="View Detail" >
                        <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Orders To be Delivered:</td>
        </tr>
        <tr>
            <td>
               <asp:GridView ID="GridViewTobeDelivered" runat="server" AutoGenerateColumns="False" 
                    EnableModelValidation="True" Height="346px" Width="918px">
                    <Columns>
                        <asp:BoundField DataField="Order_ID" HeaderText="Order ID" >
                        <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Order_Date" HeaderText="Order Date" 
                            DataFormatString="{0:d}" >
                        <HeaderStyle BorderStyle="Solid" Font-Bold="True" 
                            HorizontalAlign="Left" VerticalAlign="Middle" Font-Size="Large" />
                        <ItemStyle BorderStyle="Dotted" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Full_Name" HeaderText="Recipient" >
                        <HeaderStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Left" 
                            VerticalAlign="Middle" Font-Size="Large" />
                        <ItemStyle BorderStyle="Dotted" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Occasion_Name" HeaderText="Occasion" >
                        <HeaderStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Left" 
                            VerticalAlign="Middle" Font-Size="Large" />
                        <ItemStyle BorderStyle="Dotted" HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Delivery_Date" HeaderText="Delivery Date" 
                            DataFormatString="{0:d}" >
                        <HeaderStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Left" 
                            VerticalAlign="Middle" Font-Size="Large" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Total_Amount" HeaderText="Total Amount">
                        <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                        </asp:BoundField>
                        <asp:HyperLinkField DataNavigateUrlFields="Order_ID" 
                            DataNavigateUrlFormatString="~/Admin/OrderDetail.aspx?Order_ID={0}" 
                            HeaderText="Go to Detail" NavigateUrl="~/Admin/OrderDetail.aspx" 
                            Text="View Detail" >
                        <HeaderStyle Font-Bold="True" Font-Size="Large" HorizontalAlign="Left" 
                            VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

