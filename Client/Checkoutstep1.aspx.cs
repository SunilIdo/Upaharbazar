using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Request.Cookies["GiftSenderID"].ToString();
            Response.Redirect("CheckoutConfirmOrders.aspx");
        }
        catch
        {
           // Response.Redirect("Checkoutstep1.aspx");
        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (LoginClientFunctions.Select_Login_User(txtemail.Text, txtpassword.Text).Rows.Count == 1)
        {
            string GiftSenderID = LoginClientFunctions.Select_Login_User(txtemail.Text, txtpassword.Text).Rows[0]["User_ID"].ToString();
            Session["GiftSenderID"] = GiftSenderID;
            Response.Cookies["GiftSenderID"].Value = GiftSenderID;
            Response.Cookies["GiftSenderID"].Expires = System.DateTime.Now.AddHours(24);
            Response.Redirect("CheckoutConfirmOrders.aspx");
        }
        else
        {
            Response.Write("<script language=\"JavaScript\">alert('This User is not registered.Please Register first.')</Script>");
            // Response.Redirect("~/Client/Registration.aspx");
        }
    }
   
}