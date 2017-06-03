<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientSite.master" AutoEventWireup="true" CodeFile="SaleProduct.aspx.cs" Inherits="Client_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <table style="width:101%;">
            <tr>
                <td class="StyleReg1" style="text-align: right">
                    <asp:Label ID="lblproductid" runat="server" Text="Enter Product ID:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtproductid" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtproductid" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="btnshow" runat="server" onclick="btnshow_Click" Text="Show" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="StyleReg1">
                    &nbsp;</td>
                <td class="style2" style="text-align: left">
                    <asp:Image ID="imgitempic" runat="server" Height="189px" Width="227px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="StyleReg1">
                    <table style="width:100%;">
                        <tr>
                            <td>
                                &nbsp;</td>
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
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td class="style2" style="text-align: left">
                    <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                    <br />
                   Rs. <asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="StyleReg1">
                    &nbsp;</td>
                <td class="style2" style="text-align: left">
                    <asp:Label ID="lblquantity" runat="server" Text="Quantity:"></asp:Label>
                    <asp:DropDownList ID="drpdwnqty" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Button ID="btnaddtocart" runat="server" Text="Add To Cart" 
                        onclick="btnaddtocart_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="byncheckout" runat="server" onclick="byncheckout_Click" 
                        Text="CheckOut" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

