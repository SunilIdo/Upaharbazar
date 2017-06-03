using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            Customer_Comment.Insert_Comment(txtname.Text, txtemail.Text, txttelephone.Text, txtcomment.Text);
            Response.Write("<script language=\"javascript\">alert('Your Comment has saved successfully')</script>");
            Clear_Fields();
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert('" + ex.Message + "')</script>");
        }
    }
    void Clear_Fields()
    {
        txtname.Text = "";
        txtemail.Text = "";
        txttelephone.Text = "";
        txtcomment.Text = "";
      
    }
   
}