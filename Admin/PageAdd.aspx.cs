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
            PagesFunctions.Insert_Page(txttitle.Text, CKEditorPageBody.Text, txtpgtitle.Text, txtpgdescription.Text, txtkeywords.Text, txtauthor.Text, DropDownListStatus.SelectedValue);
            ClearFields();
            Response.Write("<script language=\"javascript\">alert('Data added successfully')</script>");
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