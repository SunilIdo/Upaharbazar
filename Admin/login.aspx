<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 103px;
            text-align: right;
        }
        .style4
        {
            width: 125px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" border="1" 
            
            style="width: 31%; height: 30px; top: 40%; right: 40%; bottom: 40%; left: 40%; display: table;">
            <tr>
                <td align="left" bgcolor="#A3A3A3" colspan="2" style="text-align: center">
                    <asp:Label ID="Label3" runat="server" Text="Admin Login"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" class="style3">
                    <asp:Label ID="Label1" runat="server" Text="User Name:" 
                        style="text-align: right"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtusername" runat="server" TabIndex="1" Width="108px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtusername" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Password:" 
                        style="text-align: right"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtpassword" runat="server" TabIndex="2" TextMode="Password" 
                        Width="107px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtpassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="btnlogin" runat="server" Height="26px" onclick="btnlogin_Click" 
                        TabIndex="3" Text="Login" />
                </td>
            </tr>
        </table>
    
    </div>
    <asp:Label ID="LabelError" runat="server"></asp:Label>
    </form>
</body>
</html>
