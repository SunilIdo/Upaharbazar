using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_Default : System.Web.UI.Page
{
    static int parentid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        parentid =int.Parse(Request.QueryString["CategoryId"]);
        if (flupimage.HasFile)
        {
            flupimage.SaveAs(MapPath("~/UploadImages/" + flupimage.FileName));
            string extension = System.IO.Path.GetExtension(flupimage.FileName);
            string FilenameRandom = RandomStringFunction.CreateARandomString(25) + extension;
            File.Move(MapPath("~/UploadImages/" + flupimage.FileName), MapPath("~/UploadImages/" + FilenameRandom));
            try
            {

                CategoryFunctions.Insert_Categories(txtcatname.Text, FilenameRandom, parentid, int.Parse(txtcatorder.Text), drpdwncatstatus.Text, txtpgtitle.Text, txtpgdescription.Text, txtkeywords.Text, txtauthor.Text);
                ClearFields();
                Response.Write("<script language=\"javascript\">alert('Data added successfully')</script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
    protected void ClearFields()
    {
        txtauthor.Text = "";
        txtcatname.Text = "";
        txtcatorder.Text = "";
        txtkeywords.Text = "";
        txtpgdescription.Text = "";
        txtpgtitle.Text = "";
        drpdwncatstatus.Text = "";

    }
}