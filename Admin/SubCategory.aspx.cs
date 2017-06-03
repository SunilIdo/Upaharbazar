using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    static int parentid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
            parentid = int.Parse(Request.QueryString["CategoryId"]);
            grdvwsubcategory.DataSource = CategoryFunctions.Select_All_SubCategories(parentid);
            grdvwsubcategory.DataBind();
      
    }

    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/SubCategoryAdd.aspx?CategoryId="+parentid);
    }
}