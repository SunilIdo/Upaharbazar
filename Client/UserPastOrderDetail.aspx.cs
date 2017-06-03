using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{
    static int Order_ID;
    float grandtotal;
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
           Order_ID = int.Parse(Request.QueryString["Order_ID"].ToString());
            
        }
        catch (Exception ex)
        {
            Response.Write("<script type=\"text/javascript\">alert('" + ex.Message + "')</script>");

        }

        DataTable dt = OrderFunctions.Get_PastOrderDetailViaOrderId(Order_ID);

        string table = "<table class=\"table table-bordered\" cellspacing=\"10\" cellpadding=\"10\"><tr><th>Order ID</th><th>Order Date</th>";
        table += "<th>Recipient</th><th>Occasion</th><th>Delevered Date</th><th>Payment Type</th>";
        table += "<th>Items</th><th>Qty</th><th>Price</th><th>Total</th></tr>";

        int c = 0;

        table += "<tr><td rowspan=\"" + dt.Rows.Count + "\">" + Order_ID + "</td>";
        foreach (DataRow dr in dt.Rows)
        {
            float qty = float.Parse(dr["Quantity"].ToString());
            float price = float.Parse(dr["Price"].ToString());
            float total = qty * price;
            grandtotal += total;
            c = c + 1;
            
            
            string orderdateonly = DateTime.Parse(dr["Order_Date"].ToString()).ToShortDateString();

            string deliverydateonly = DateTime.Parse(dr["Delivery_Date"].ToString()).ToShortDateString();
            if (c == dt.Rows.Count - 1)
            {

                table += "<td>" +orderdateonly+ "</td><td>" + dr["Full_Name"].ToString() + "</td><td>" + dr["Occasion_Name"].ToString() + "</td><td>" + deliverydateonly + "</td><td>" + dr["Payment_Type"].ToString() + "</td>";
                table += "<td>" + dr["Name"].ToString() + "</td><td>" + qty + "</td><td>" + price + "</td><td>" + total + "</td></tr>";
            }
            else
            {
                table += "<td>" + orderdateonly+ "</td><td>" + dr["Full_Name"].ToString() + "</td><td>" + dr["Occasion_Name"].ToString() + "</td><td>" + deliverydateonly + "</td><td>" + dr["Payment_Type"].ToString() + "</td>";
                table += "<td>" + dr["Name"].ToString() + "</td><td>" + qty + "</td><td>" + price + "</td><td>" + total + "</td></tr><tr>";
            }
        }
        table += "<tr><td colspan=\"10\"></td></tr><tr class=\"grandtotal\"><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Grand Total:</td><td>" + grandtotal + "</td></tr></table>";
        showpastorderdetail.InnerHtml = table;
        
        
    }
}