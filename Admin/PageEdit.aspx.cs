using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    static int pageid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pageid = int.Parse(Request.QueryString["pageid"]);
            DataTable dt = PagesFunctions.Get_Selected_Page(pageid);
            txttitle.Text = dt.Rows[0]["Title"].ToString();
            txtpgtitle.Text = dt.Rows[0]["Page_Title"].ToString();
            CKEditorPageBody.Text = dt.Rows[0]["Page_Body"].ToString();
            txtpgdescription.Text = dt.Rows[0]["Page_Description"].ToString();
            txtkeywords.Text = dt.Rows[0]["Keywords"].ToString();
            txtauthor.Text = dt.Rows[0]["Author"].ToString();
        }

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            PagesFunctions.Update_Page(pageid, txttitle.Text, CKEditorPageBody.Text, txtpgtitle.Text, txtpgdescription.Text, txtkeywords.Text, txtauthor.Text,DropDownListStatus.SelectedValue);
           // ClearFields();
            Response.Write("<script language=\"javascript\">alert('Data updated successfully')</script>");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    void ClearFields()
    {
        txtauthor.Text = "";
        txtkeywords.Text = "";
        CKEditorPageBody.Text = "";
        txtpgdescription.Text = "";
        txtpgtitle.Text = "";
        txttitle.Text = "";
    }
}