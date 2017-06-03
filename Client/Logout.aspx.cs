using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Response.Write("<script language=\"javascript\">alert('Your are logged out. Thank you! Visit Again.')</script>");
        Response.Cookies["GiftSenderID"].Expires = System.DateTime.Now.AddDays(-1);
        Response.Cookies["ShoppingCart"].Expires = System.DateTime.Now.AddDays(-1);
        Response.Redirect("Home.aspx");
    }
}