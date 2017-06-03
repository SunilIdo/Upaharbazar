using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string RefCheck = Request.QueryString["ref"].ToString();
            if (RefCheck == "1")
            {
                LabelError.Text = "Please provide correct Username or password";
            }
            else
            {
                LabelError.Text = "Access denied";
            }
        }
        catch
        {

        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (LoginFuntions.select_unam_pw(txtusername.Text,txtpassword.Text).Rows.Count == 1)
        {
            Session["SuperAdmin"] = txtusername.Text;
            Response.Cookies["SuperAdmin"].Value = txtusername.Text;
            //Response.Cookies["SuperAdmin"].Expires = System.DateTime.Now.AddHours(1);

            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Write("<script language=\"JavaScript\">alert('Username or Password is incorrect')</Script>");
        }
    }
}