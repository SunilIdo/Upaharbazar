using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = Customer_Comment.Select_All_Comments();
        lbltitle.Text = "<h1 class=\"page-title\">Customer's Testimonials:</h1>";
        GridViewTestimonials.DataSource = dt;
        GridViewTestimonials.DataBind();
    }
}