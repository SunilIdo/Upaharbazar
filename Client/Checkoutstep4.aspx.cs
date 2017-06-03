using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        lblmessage.Text = "You are successfully checked out. Thank you for shopping here. Visit Again";
       
    }
}