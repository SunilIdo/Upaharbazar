using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{
    string Title=string.Empty;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Title = Request.QueryString["title"];
            dt = PagesFunctions.Get_SelectedFooterPageDetail(Title);

        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert('" + ex.Message + "')</script>");
        }
        lbltitle.Text = "<h1 class=\"page-title\">" + dt.Rows[0]["Title"].ToString() + "</h1>";
        lblbody.Text = dt.Rows[0]["Page_Body"].ToString();
    }
    
}