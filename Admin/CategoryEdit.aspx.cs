using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_Default : System.Web.UI.Page
{
    static string ImageFileName = "";
    static int CategoryId = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            CategoryId = int.Parse(Request.QueryString["CategoryId"]);
            DataTable dt = CategoryFunctions.Get_Selected_Category(CategoryId);
            try
            {
                txtcatname.Text = dt.Rows[0]["Cat_Name"].ToString();
                txtauthor.Text = dt.Rows[0]["Author"].ToString();
                txtcatorder.Text = dt.Rows[0]["Cat_Order"].ToString();
                txtkeywords.Text = dt.Rows[0]["Keywords"].ToString();
                txtpgtitle.Text = dt.Rows[0]["Page_Title"].ToString();
                txtpgdescription.Text = dt.Rows[0]["Page_Description"].ToString();
                drpdwncatstatus.Text = dt.Rows[0]["Cat_Status"].ToString();
                imgcategory.ImageUrl = "~/UploadImages/" + dt.Rows[0]["Cat_Image"].ToString();
                ImageFileName = dt.Rows[0]["Cat_Image"].ToString();


            }
            catch (Exception ex)
            {
                Response.Write("<script language=\"javascript\">alert('There is system error:')" + ex.Message + "</script>");
            }
        }

    }

    void ClearFields()
    {
        txtcatname.Text = "";
        txtauthor.Text = "";
        txtcatorder.Text = "";
        txtkeywords.Text = "";
        txtpgtitle.Text = "";
        txtpgdescription.Text = "";
        drpdwncatstatus.Text = "";
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (flupimage.HasFile)
        {
            flupimage.SaveAs(MapPath("~/UploadImages/" + flupimage.FileName));
            string extension = System.IO.Path.GetExtension(flupimage.FileName);
            string FilenameRandom = RandomStringFunction.CreateARandomString(25) + extension;
            File.Move(MapPath("~/UploadImages/" + flupimage.FileName), MapPath("~/UploadImages/" + FilenameRandom));
            try
            {

                CategoryFunctions.Update_Category(CategoryId, txtcatname.Text, FilenameRandom, int.Parse(txtcatorder.Text), drpdwncatstatus.Text, txtpgtitle.Text, txtpgdescription.Text, txtkeywords.Text, txtauthor.Text);
                ClearFields();
                Response.Write("<script language=\"javascript\">alert('Data updated successfully')</script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        else
        {
            try
            {
                CategoryFunctions.Update_Category(CategoryId, txtcatname.Text, ImageFileName, int.Parse(txtcatorder.Text), drpdwncatstatus.Text, txtpgtitle.Text, txtpgdescription.Text, txtkeywords.Text, txtauthor.Text);
                ClearFields();
                Response.Write("<script language=\"javascript\">alert('Data updated successfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
