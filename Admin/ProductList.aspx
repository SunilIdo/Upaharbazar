<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adminpanel.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="Admin_Default" %>
  
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
    <script type="text/javascript">
        var TotalChkBx;
        var Counter;

        window.onload = function () {
            TotalChkBx = parseInt('<%= this.grdvwproducts.Rows.Count %>');
            Counter = 0;
        }

        function SelectAll(CheckBox) {
            var TargetBaseControl = document.getElementById('<%= this.grdvwproducts.ClientID %>');
            var TargetChildControl = "chkselectitem";
            var Inputs = TargetBaseControl.getElementsByTagName("input");
            for (var n = 0; n < Inputs.length; ++n)
                if (Inputs[n].type == 'checkbox' && Inputs[n].id.indexOf(TargetChildControl, 0) >= 0)
                    Inputs[n].checked = CheckBox.checked;
            Counter = CheckBox.checked ? TotalChkBx : 0;
            var ReturnCounter = Counter;
            alert(Counter);
            document.getElementById('<%=this.HiddenFieldSelectedItemCounter%>').Value = ReturnCounter;
         }

        function ChildClick(CheckBox, HCheckBox) {
            var HeaderCheckBox = document.getElementById(HCheckBox);
            if (CheckBox.checked && Counter < TotalChkBx)
                Counter++;
            else if (Counter > 0)
                Counter--;
            if (Counter < TotalChkBx)
                HeaderCheckBox.checked = false;
            else if (Counter == TotalChkBx)
                HeaderCheckBox.checked = true;
            alert(Counter);
             var ReturnCounter = Counter;
             document.getElementById('<%=this.HiddenFieldSelectedItemCounter%>').Value = ReturnCounter;
            
        }
       

    </script>
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">
    <asp:HiddenField ID="HiddenFieldSelectedItemCounter" runat="server" />
<table border="1" style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Products"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="grdvwproducts" runat="server" AutoGenerateColumns="False" 
                        EnableModelValidation="True" onrowcreated="grdvwproducts_RowCreated" >
                        <Columns>
                            <asp:TemplateField>
                            <HeaderTemplate>
                             <asp:CheckBox ID="chkheader" runat="server" onclick="javascript:SelectAll(this);" />
                            </HeaderTemplate>
                                <ItemTemplate>
                                   
                                    <asp:CheckBox ID="chkselectitem" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Name" HeaderText="Product Name" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                            <asp:BoundField DataField="Prod_status" HeaderText="Status" />
                           
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnadd" runat="server" Text="Add" onclick="btnadd_Click" /> </td>
            </tr>
        </table>
</asp:Content>

