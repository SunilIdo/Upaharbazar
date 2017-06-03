using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{

    static int User_ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
        User_ID = int.Parse(Session["GiftSenderID"].ToString());
        }
        catch(Exception ex)
        {
        
        Response.Write("<script type=\"text/javascript\">alert('" + ex.Message + "')</script>");
        }
        if (OrderFunctions.SelectAllPastOrderViaUserId(User_ID).Rows.Count > 0)
        {
            lblmessage.Visible = false;
            GridViewPastOrder.DataSource = OrderFunctions.SelectAllPastOrderViaUserId(User_ID);
            GridViewPastOrder.DataBind();
        }
        else
        {
            lblmessage.Text = "<h2 class=\"legend\">You have no past orders </h2>";
        }
    }
    
}