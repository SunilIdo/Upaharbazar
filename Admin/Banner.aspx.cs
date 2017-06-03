using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        grdvwbanner.DataSource = BannerFunctions.Select_All_Banners();
        grdvwbanner.DataBind();
    }
    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/BannerAdd.aspx");
    }
}