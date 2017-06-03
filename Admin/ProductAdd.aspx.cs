using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            drpdwncategory.DataSource = CategoryFunctions.Select_AllMainAndSubCategories();
            drpdwncategory.DataTextField = "Cat_Name";
            drpdwncategory.DataValueField = "Cat_ID";
            drpdwncategory.DataBind();
        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
       // Response.Write(drpdwncategory.SelectedValue);
        if (flupimage.HasFile)
        {
           // Response.Write(drpdwncategory.SelectedValue);
            flupimage.SaveAs(MapPath("~/UploadImages/" + flupimage.FileName));
            string extension = System.IO.Path.GetExtension(flupimage.FileName);
            string filenamerandom = RandomStringFunction.CreateARandomString(25) + extension;
            File.Move(MapPath("~/uploadimages/" + flupimage.FileName), MapPath("~/UploadImages/" + filenamerandom));
            try
            {
                ProductFunctions.Insert_Product(txtpname.Text, int.Parse(drpdwncategory.SelectedValue.ToString()), float.Parse(txtprice.Text), int.Parse(txtporder.Text), drpdwnpstatus.Text, filenamerandom, txtdescription.Text, txtotherdescription.Text, txtpgtitle.Text, txtpgdescription.Text, txtkeywords.Text, txtauthor.Text);
                ClearFields();
                Response.Write("<script language=\"JavaScript\">alert('Data added successfully')</script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
        else
        {
            Response.Write("<script language=\"javascript\">alert('There is no file selected!!! Please Select Image file')</script>");
        }

    }
    protected void ClearFields()
    {
        txtpname.Text = "";
        txtporder.Text = "";
        txtauthor.Text = "";
        txtdescription.Text = "";
        txtkeywords.Text = "";
        txtotherdescription.Text = "";
        txtpgdescription.Text = "";
        txtpgtitle.Text = "";
        txtprice.Text = "";
        
     
       
    }
    
}