using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{
    static int Order_ID;
    static float grandtotal;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        try
        {
            Order_ID = int.Parse(Request.Cookies["ShoppingCart"].Value.ToString());

        }
        catch (Exception ex)
        {
            Response.Write("<script type=\"text/javascript\">alert('" + ex.Message + "')</script>");
           // lblmessage.Text = "<h2 class=\"legend\">You have no current order</h2>";

        }
            string table = "<table cellspacing=\"10\"><tr><th>Order ID</th><th>Items</th><th>Qty</th><th>Price</th><th>Total</th></tr>";
            
            int c = 0;
            if (OrderFunctions.Get_Order_Detail(Order_ID).Rows.Count >= 1)
            {
                lblmessage.Visible = false;
                DataTable dt = OrderFunctions.Get_Order_Detail(Order_ID);
                table += "<tr><td rowspan=\"" + dt.Rows.Count + "\">" + Order_ID + "</td>";
                foreach (DataRow dr in dt.Rows)
                {
                    float qty = float.Parse(dr["Quantity"].ToString());
                    float price = float.Parse(dr["Price"].ToString());
                    float total = qty * price;
                    grandtotal += total;
                    c = c + 1;
                    if (c == dt.Rows.Count - 1)
                    {
                        table += "<td>" + dr["Name"].ToString() + "</td><td>" + qty + "</td><td>" + price + "</td><td>" + total + "</td></tr>";
                    }
                    else
                    {
                        table += "<td>" + dr["Name"].ToString() + "</td><td>" + qty + "</td><td>" + price + "</td><td>" + total + "</td></tr><tr>";
                    }
                }
                table += "<tr class=\"grandtotal\"><td></td><td></td><td></td><td>Grand Total:</td><td>" + grandtotal + "</td></table>";
                showactiveorder.InnerHtml = table;
            }
            else
            {
                lblmessage.Text="<h2 class=\"legend\">You have no current order</h2>";
            }
    }
}