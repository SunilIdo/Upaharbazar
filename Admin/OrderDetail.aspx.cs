using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    int Order_ID;
    float grandtotal;
    DataTable dt = new DataTable();
    DataTable dt2 = new DataTable();
    string orderproductdetail=string.Empty;
    int orderstatus;
    string status = string.Empty;
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
        dt = OrderFunctions.Get_PastOrderDetailViaOrderId(Order_ID);
        dt2 = RecipientFunctions.Get_RecipientDetailViaOrderId(Order_ID);
        orderstatus = int.Parse(dt.Rows[0]["Order_Status"].ToString());
        lblorderid.Text = dt.Rows[0]["Order_ID"].ToString();
        lblsendername.Text = dt.Rows[0]["FullName"].ToString();
        lblsenderaddress.Text = dt.Rows[0]["City"].ToString() + ", " + dt.Rows[0]["Tole_Street"].ToString();
        lblsendercontact.Text = dt.Rows[0]["Mobile_No"].ToString();
        lblreceiveraddress.Text = dt2.Rows[0]["City"].ToString() + ", " + dt.Rows[0]["Tole_Street"].ToString();
        lblreceivercontact.Text = dt2.Rows[0]["Mobile_No"].ToString();
        lblreceivername.Text = dt2.Rows[0]["Full_Name"].ToString();
        lblmessage.Text = dt.Rows[0]["Message"].ToString();
        lbloccasion.Text = dt.Rows[0]["Occasion_Name"].ToString();
        lblorderdate.Text = DateTime.Parse(dt.Rows[0]["Order_Date"].ToString()).ToShortDateString();
        lbldeliverydate.Text = DateTime.Parse(dt.Rows[0]["Delivery_Date"].ToString()).ToShortDateString();
        if (orderstatus == 1)
        {
            status = "Payment Proceed";
        }
        else if (orderstatus == 0)
        {
            status = "Pending";
        }
        else if (orderstatus == -1)
        {
            status = "Canceled";
        }
        else if (orderstatus == 2)
        {
            status = "Delivered";
        }
        else
        {
            status = "N/A";
        }
        lblstatus.Text = status;
        ReturnOrderProduct();
        orderproducts.InnerHtml = orderproductdetail;
       
    }
    public void ReturnOrderProduct()
    {
        orderproductdetail += "<table class=\"table table-bordered\" width=\"100%\" cellspacing=\"10\" cellpadding=\"10\"><tr align=\"Left\"><th>Product</th><th>Qty</th><th>Price</th><th>Total</th></tr>";
        foreach (DataRow dr in dt.Rows)
        {
            float qty = float.Parse(dr["Quantity"].ToString());
            float price = float.Parse(dr["Price"].ToString());
            float total = qty * price;
            grandtotal += total;
            string orderdateonly = DateTime.Parse(dr["Order_Date"].ToString()).ToShortDateString();
            string deliverydateonly = DateTime.Parse(dr["Delivery_Date"].ToString()).ToShortDateString();
            orderproductdetail += "<tr align=\"left\"><td>" + dr["Name"].ToString() + "</td><td>" + qty + "</td><td>" + price + "</td><td>" + total + "</td></tr>";
        }
        orderproductdetail+="<tr class=\"grandtotal\"><td></td><td colspan=\"2\">Grand Total:</td><td>" + grandtotal + "</td></tr></table>";
        //return orderproductdetail;
        
    }
        
         //-------------------------------------------------old code---------------------------------------------
        //string table = "<table cellspacing=\"10\" cellpadding=\"10\"><tr><th>Order ID</th><th>Order Date</th><th>Sender</th>";
        //table += "<th>Recipient</th><th>Occasion</th><th>Delevered Date</th><th>Payment Type</th>";
        //table += "<th>Items</th><th>Qty</th><th>Price</th><th>Total</th></tr>";

        //int c = 0;

        //table += "<tr><td rowspan=\"" + dt.Rows.Count + "\">" + Order_ID + "</td>";
        //foreach (DataRow dr in dt.Rows)
        //{
        //    float qty = float.Parse(dr["Quantity"].ToString());
        //    float price = float.Parse(dr["Price"].ToString());
        //    float total = qty * price;
        //    grandtotal += total;
        //    c = c + 1;


        //    string orderdateonly = DateTime.Parse(dr["Order_Date"].ToString()).ToShortDateString();

        //    string deliverydateonly = DateTime.Parse(dr["Delivery_Date"].ToString()).ToShortDateString();
        //    if (c == dt.Rows.Count - 1)
        //    {

        //        table += "<td>" + orderdateonly + "</td><td>" + dr["FullName"].ToString() + "</td><td>" + dr["Full_Name"].ToString() + "</td><td>" + dr["Occasion_Name"].ToString() + "</td><td>" + deliverydateonly + "</td><td>" + dr["Payment_Type"].ToString() + "</td>";
        //        table += "<td>" + dr["Name"].ToString() + "</td><td>" + qty + "</td><td>" + price + "</td><td>" + total + "</td></tr>";
        //    }
        //    else
        //    {
        //        table += "<td>" + orderdateonly + "</td><td>" + dr["FullName"].ToString() + "</td><td>" + dr["Full_Name"].ToString() + "</td><td>" + dr["Occasion_Name"].ToString() + "</td><td>" + deliverydateonly + "</td><td>" + dr["Payment_Type"].ToString() + "</td>";
        //        table += "<td>" + dr["Name"].ToString() + "</td><td>" + qty + "</td><td>" + price + "</td><td>" + total + "</td></tr><tr>";
        //    }
        //}
        //table += "<tr class=\"grandtotal\"><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan=\"2\">Grand Total:</td><td>" + grandtotal + "</td></tr></table>";
        //showorderdetail.InnerHtml = table;
       
  
  
}