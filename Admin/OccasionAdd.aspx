<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="OccasionAdd.aspx.cs" Inherits="Admin_Default" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
<script type="text/javascript">
    //          alert($('selector').length)
    $(document).ready(function () {
        $("input[id$='txtdate']").datepicker()
    });
     
    </script>
    <style type="text/css">
    .ui-datepicker{font-size:8pt !important}
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

    <table style="width: 100%;" border="1">
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Add Occasion"></asp:Label>
            </td>
            <td style="width: 231px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label1" runat="server" Text="Occasion Name:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtoccasionname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtoccasionname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label12" runat="server" Text="Occasion Date:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label3" runat="server" Text="Description:"></asp:Label>
            </td>
            <td style="width: 231px">
                <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtdescription" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                &nbsp;</td>
            <td style="width: 231px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px; width: 160px;">
                &nbsp;</td>
            <td style="width: 231px">
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

