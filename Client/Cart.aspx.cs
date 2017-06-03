using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{
    static string prevpage=string.Empty;
    int Order_ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            prevpage=Request.UrlReferrer.ToString();
        }
        try
        {
            Order_ID=int.Parse(Request.Cookies["ShoppingCart"].Value.ToString());
        }
        catch
        { 
            Response.Redirect(prevpage);
        }


    }
    public string Return_OrdersInCart()
    { 
        string Ordersincart=string.Empty;
        DataTable dt=OrderFunctions.Get_Order_Detail(Order_ID);
        foreach(DataRow dr in dt.Rows)
        {
            Ordersincart+="<ul class=\"shopping-cart-table\">";
            Ordersincart+="<li><div class=\"img-box\"><img src=\"../UploadImages/"+dr["Prod_Image"].ToString()+"\"/></div>";
            Ordersincart+="<a class=\"edit-btn\" href=\"#\" title=\"Edit\">Edit</a>";
            Ordersincart+="</li>";
            Ordersincart+="<li><div class=\"remove-item-btn\"><a href=\"#\" title=\"Remove\"><img src=\"images/delete_item_btn.png\" title=\"Remove\" alt=\"Remove\" /></a></div>";
            Ordersincart+="<div class=\"pro-name\">"+dr["Name"].ToString()+"</div>";
            Ordersincart+="<div class=\"pro-qty\"><input type=\"text\" value=\""+dr["Quantity"].ToString()+"\"/></div>";
            Ordersincart += "<div class=\"pro-price\">"+"Rs. " + dr["Price"] + "</div></li></ul>";   
            //<asp:TextBox ID=\"txtquantity\" runat=\"server\" Text=\"""\"></asp:TextBox>
        }
        return Ordersincart;
    
    }
}