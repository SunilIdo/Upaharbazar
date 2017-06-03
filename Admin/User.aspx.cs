using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        grdvwusers.DataSource = UserFunctions.Select_All_Users();
        grdvwusers.DataBind();
    }
    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/UserAdd.aspx");
    }
    protected void grdvwusers_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}