using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (flupbanner.HasFile)
        { 
        flupbanner.SaveAs(MapPath("~/UploadImages/"+flupbanner.FileName));
        string extension = System.IO.Path.GetExtension("~/UploadImages/" + flupbanner.FileName);
        string filenamerandom = RandomStringFunction.CreateARandomString(25) + extension;
        File.Move(MapPath("~/UploadImages/" + flupbanner.FileName), MapPath("~/UploadImages/" + filenamerandom));
        try
        {
            BannerFunctions.Insert_Banner(txttitle.Text,filenamerandom, drpdwnstatus.Text, int.Parse(txtdisplayorder.Text), txtdescription.Text);
            ClearFields();
            Response.Write("<script language=\"javascript\">alert('Data added successfully')</script>");

        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert('" + ex.Message + "')</script>");
        }
        }
    }
    void ClearFields()
    {
        txtdescription.Text = "";
        txtdisplayorder.Text = "";
        txttitle.Text = "";
    }
}