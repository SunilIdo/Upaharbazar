using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_Default : System.Web.UI.Page
{
    static string imgfile;
    static int bid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            try
            {
                bid = int.Parse(Request.QueryString["bannerid"]);
                DataTable dt = BannerFunctions.Get_Selected_Banner(bid);
                txttitle.Text = dt.Rows[0]["Title"].ToString();
                txtdescription.Text = dt.Rows[0]["Description"].ToString();
                txtdisplayorder.Text = dt.Rows[0]["BannerOrder"].ToString();
                drpdwnstatus.Text = dt.Rows[0]["Status"].ToString();
                imgfile = dt.Rows[0]["BFilename"].ToString();
                imgbanner.ImageUrl = "~/UploadImages/" + imgfile;
            }
            catch (Exception ex)
            {
                Response.Write("<script language=\"javascript\">alert('There is system error:')" + ex.Message + "</script>");
            }
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
       
        if (flupbanner.HasFile)
        {
            flupbanner.SaveAs(MapPath("~/UploadImages/" + flupbanner.FileName));
            string extension = System.IO.Path.GetExtension("~/UploadImages/" + flupbanner.FileName);
            string filenamerandom = RandomStringFunction.CreateARandomString(25) + extension;
            File.Move(MapPath("~/UploadImages/" + flupbanner.FileName), MapPath("~/UploadImages/" + filenamerandom));
            try
            {
                BannerFunctions.Update_Banner(bid, txttitle.Text, filenamerandom, drpdwnstatus.Text, int.Parse(txtdisplayorder.Text), txtdescription.Text);
                Response.Write("<script language=\"javascript\">alert('Data updated successfully')</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script language=\"javascript\">alert('" + ex.Message + "')</script>");
            }
        }
        else
        {
            try
            {
                BannerFunctions.Update_Banner(bid, txttitle.Text, imgfile, drpdwnstatus.Text, int.Parse(txtdisplayorder.Text), txtdescription.Text);

                Response.Write("<script language=\"javascript\">alert('Data updated successfully')</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script language=\"javascript\">alert('" + ex.Message + "')</script>");
            }
        }

    }
    

}