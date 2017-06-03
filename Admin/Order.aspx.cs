using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = OrderFunctions.Select_AllOrders();

        if (!IsPostBack)
        {
            GridViewOrders.DataSource = dt;
            GridViewOrders.DataBind();

        }
    }
}