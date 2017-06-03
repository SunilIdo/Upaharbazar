using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    static int chargeid=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            chargeid = int.Parse(Request.QueryString["chargeid"]);
            DataTable dt = DeliveryChargeFunctions.Get_Selected_Charge(chargeid);
            txtdestination.Text = dt.Rows[0]["District"].ToString();
            txtextracharge.Text = dt.Rows[0]["ExtraCharge"].ToString();
            txtmindeliverytime.Text = dt.Rows[0]["Min_Delivery_Time"].ToString();
        }

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        chargeid=int.Parse(Request.QueryString["chargeid"]);
        try
        {
        DeliveryChargeFunctions.Update_Delivery_Charge(chargeid,txtdestination.Text,float.Parse(txtextracharge.Text),int.Parse(txtmindeliverytime.Text));
        ClearFields();
        Response.Write("<script language=\"javascript\">alert('Data Updated successfully')</script>");
        }
        catch(Exception ex)
        {
        Response.Write("There is system error:"+ex.Message);
        }
    }
    void ClearFields()
    {
        txtmindeliverytime.Text = "";
        txtdestination.Text = "";
        txtextracharge.Text = "";

    }
}