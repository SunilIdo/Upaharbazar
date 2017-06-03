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
            DeliveryChargeFunctions.Insert_Delivery_Charge(txtdestination.Text, float.Parse(txtextracharge.Text), int.Parse(txtmindeliverytime.Text));
            ClearFields();
            Response.Write("<script language=\"javascript\">alert('Data Updated successfully')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("There is system error:" + ex.Message);
        }
    }
    void ClearFields()
    {
        txtmindeliverytime.Text = "";
        txtdestination.Text = "";
        txtextracharge.Text = "";

    }



}