using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Default : System.Web.UI.Page
{
    static int User_ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            User_ID = int.Parse(Session["GiftSenderID"].ToString());
        }
        catch(Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert('"+ex.Message+"')</script>");
        }
            GridViewRecipientInfo.DataSource = RecipientFunctions.Get_Selected_Recipients(User_ID);
        GridViewRecipientInfo.DataBind();
    }
}