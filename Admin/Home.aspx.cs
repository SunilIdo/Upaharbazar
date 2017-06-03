using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridViewTobePaid.DataSource = OrderFunctions.Select_OrdersTobePaid();
        GridViewTobePaid.DataBind();
        GridViewTobeDelivered.DataSource = OrderFunctions.Select_OrdersTobeDelivered();
        GridViewTobeDelivered.DataBind();
    }
}