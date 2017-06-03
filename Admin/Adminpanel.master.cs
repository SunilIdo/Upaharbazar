using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Adminpanel : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string SessionValue="";
        string CookieValue="";
        try
        {
            SessionValue = Session["SuperAdmin"].ToString();
            CookieValue = Request.Cookies["SuperAdmin"].Value;
            if (SessionValue != CookieValue)
            {
                Response.Redirect("~/Admin/login.aspx?ref=1"); //Incorrect Login

            }
        }
        catch
        {
            Response.Redirect("~/Admin/login.aspx?ref=2"); //Invalid access
        } 


    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["SuperAdmin"] = "SessionKill";
        Response.Cookies["SuperAdmin"].Expires = System.DateTime.Now;
        Response.Redirect("~/Admin/login.aspx");
    }
}
