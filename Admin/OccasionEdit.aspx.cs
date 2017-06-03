using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Common;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    static int oid=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            oid = int.Parse(Request.QueryString["OID"]);
            DataTable dt = OccasionFunctions.Get_Selected_Occasion(oid);
            txtoccasionname.Text = dt.Rows[0]["Occasion_Name"].ToString();
            txtdescription.Text = dt.Rows[0]["Descript"].ToString();
            txtdate.Text = dt.Rows[0]["Occasion_Date"].ToString();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        oid =int.Parse(Request.QueryString["OID"]);
        try
        {
            OccasionFunctions.Update_Occasion(oid,txtoccasionname.Text,txtdate.Text,txtdescription.Text);
            ClearFields();
            Response.Write("<script language=\"javascript\">alert('Data updated successfully')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert('There is system error:'" + ex.Message + ")</script>");
        }
    }
    void ClearFields()
    {
        txtdate.Text = "";
        txtdescription.Text = "";
        txtoccasionname.Text = "";
    }
}