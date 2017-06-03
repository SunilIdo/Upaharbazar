using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            OccasionFunctions.Insert_Occasion(txtoccasionname.Text, DateTime.Parse(txtdate.Text), txtdescription.Text);
            Response.Write("<script language=\"javascript\">alert('Data saved successfully')</script>");
            ClearFields();
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert('There is system error:'"+ex.Message+")</script>");
        }
    }
   void ClearFields()
    {
        txtdate.Text = "";
        txtdescription.Text = "";
        txtoccasionname.Text = "";
    }
}