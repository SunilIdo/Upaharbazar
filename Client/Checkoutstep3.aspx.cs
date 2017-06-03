using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default2 : System.Web.UI.Page
{
    static float GrandTotal;
    static string paymenttype=string.Empty;
    static string paymentstatus = "Pending";
    static int Order_ID;
    static int Order_Detail_ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
           
            Order_ID = int.Parse(Request.Cookies["ShoppingCart"].Value.ToString());
            DataTable dt = OrderFunctions.Get_OrderDetailIdViaOrderId(Order_ID);
            Order_Detail_ID = int.Parse(dt.Rows[0]["Order_Detail_ID"].ToString());
            
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert('" + ex.Message + "')</script>");
        }
        try
        {
            GrandTotal = float.Parse(Request.Cookies["GrandTotal"].Value.ToString());
            Response.Write("<br/>GrandTotal=" + GrandTotal);
            Response.Write("ODID=" + Order_Detail_ID + "  OID=" + Order_ID);
        }
        catch
        {
            Response.Write("<script language=\"javascript\">alert('Your Grand Total is missing. Please check your order once.')</script>");
        }
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        if (rdbtnpaypal.Checked)
        {
            paymenttype = "Paypal";
            ClearPayment();
//       Response.Redirect("https://www.paypal.com/ cgi-bin/webscr?cmd=_xclick&business=sunilmagar@gmail.com&item_name=". urlencode($config_sitename)

//. "+Order&item_number=PROD" . $row['id']."&amount=" . urlencode(sprintf('%.2f',$row['total'])) . "&no_note=1&currency_code=GBP&lc=GB&submit.x=41&submit.y=15");
        }
        else if (rdbtnbonuspaypoints.Checked)
        {
            paymenttype = "Bonus Pay Point";
            ClearPayment();
        }
        else if (rdbtncreditdebitcard.Checked)
        {
            paymenttype = "Credit/Debit Card";
            ClearPayment();
        }
        else if (rdbtncashondelivery.Checked)
        {
            paymenttype = "Cash On Delivery";
            ClearPayment();

        }
        else if (rdbtnphoneorder.Checked)
        {
            paymenttype = "Phone Order";
            ClearPayment();
            
        }
        else
        { 
        }
    }
    void UpdateOrderDetail()
    {
        try
        {
          OrderFunctions.Update_Order_Detail(Order_Detail_ID,paymenttype,paymentstatus,GrandTotal);
         // OrderFunctions.UpdateOrderStatus(Order_ID);
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert('" + ex.Message + "')</script>");
        }
    }
    void ClearPayment()
    {
        paymentstatus = "Paid";
        UpdateOrderDetail();
        Response.Cookies["ShoppingCart"].Expires = System.DateTime.Now.AddDays(-1);
        Response.Cookies["GrandTotal"].Expires = System.DateTime.Now.AddDays(-1);
        Response.Redirect("Checkoutstep4.aspx");
    }
}