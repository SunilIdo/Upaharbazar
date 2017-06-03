using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_Default : System.Web.UI.Page
{
    static int productid;
    static string imagefile = "";
    static int catid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            productid = int.Parse(Request.QueryString["ProductId"]);
            DataTable dt = ProductFunctions.Get_Selected_Product(productid);
            txtauthor.Text = dt.Rows[0]["Author"].ToString();
            txtdescription.Text = dt.Rows[0]["Descript"].ToString();
            txtkeywords.Text = dt.Rows[0]["Keywords"].ToString();
            txtotherdescription.Text = dt.Rows[0]["Other_Descript"].ToString();
            txtpgdescription.Text = dt.Rows[0]["Page_Description"].ToString();
            txtpgtitle.Text = dt.Rows[0]["Page_Title"].ToString();
            txtpname.Text = dt.Rows[0]["Name"].ToString();
            txtporder.Text = dt.Rows[0]["Prod_Order"].ToString();
            txtprice.Text = dt.Rows[0]["Price"].ToString();
            catid = int.Parse(dt.Rows[0]["Cat_ID"].ToString());
            //drpdwncategory.DataSource = CategoryFunctions.Select_all_Categories();
            drpdwncategory.DataSource = CategoryFunctions.Get_Selected_Category(catid);
            drpdwncategory.DataTextField = "Cat_Name";
            drpdwncategory.DataValueField = "Cat_ID";
            drpdwncategory.DataBind();
           // Response.Write(drpdwncategory.Text);
            //drpdwncategory.SelectedValue = CategoryFunctions.Get_Selected_Category(catid).Rows[0]["Cat_Name"].ToString();
            //Response.Write(dt.Rows[0]["Cat_ID"].ToString());
            drpdwnpstatus.Text = dt.Rows[0]["Prod_Status"].ToString();
            imgproduct.ImageUrl = "~/UploadImages/" + dt.Rows[0]["Prod_Image"].ToString();
            imagefile = dt.Rows[0]["Prod_Image"].ToString();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (flupimage.HasFile)
        {
            flupimage.SaveAs(MapPath("~/UploadImages/" + flupimage.FileName));
            string extension = System.IO.Path.GetExtension(flupimage.FileName);
            string filenamerandom = RandomStringFunction.CreateARandomString(25) + extension;
            File.Move(MapPath("~/UploadImages/" + flupimage.FileName), MapPath("~/UploadImages/" + filenamerandom));
            try
            {
                ProductFunctions.Update_Product(productid, txtpname.Text, int.Parse(drpdwncategory.SelectedValue), float.Parse(txtprice.Text), int.Parse(txtporder.Text), drpdwnpstatus.Text, filenamerandom, txtdescription.Text, txtotherdescription.Text, txtpgtitle.Text, txtpgdescription.Text, txtkeywords.Text, txtauthor.Text);
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
                ProductFunctions.Update_Product(productid, txtpname.Text, int.Parse(drpdwncategory.SelectedValue), float.Parse(txtprice.Text), int.Parse(txtporder.Text), drpdwnpstatus.Text, imagefile, txtdescription.Text, txtotherdescription.Text, txtpgtitle.Text, txtpgdescription.Text, txtkeywords.Text, txtauthor.Text);
                ClearFields();
                Response.Write("<script language=\"javascript\">alert('Data updated successfully')</script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
    void ClearFields()
    {
        txtauthor.Text = "";
        txtdescription.Text = "";
        txtkeywords.Text = "";
        txtotherdescription.Text = "";
        txtpgdescription.Text = "";
        txtpgtitle.Text = "";
        txtpname.Text = "";
        txtporder.Text = "";
        txtprice.Text = "";
        imgproduct.ImageUrl = "";
        drpdwncategory.SelectedIndex = 0;

    }
}