using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    public string ReturnProduct()
    {
        
        string table = "<ul class=\"product-grid\">";
        int c = 0;
        DataTable dt = ProductFunctions.Get_Random_Products();
        
        foreach (DataRow dr in dt.Rows)
        {
            if (c == 4)
            {
                table += "</ul><ul class=\"product-grid\">";
                c = 0;
            }
            table += "<li><div class=\"pro-img\">";
            table += "<a href=\"ProductView.aspx?pid=" + dr["Product_ID"] + "\"><img title=\"Freature Product\" alt=\"Freature Product\" src=\"../UploadImages/" + dr["Prod_Image"].ToString() + "\" />";
            table += "</div><div class=\"pro-content\"><p>";
            table += dr["Name"].ToString();
            table += "</p></div><div class=\"pro-price\">Rs. " + dr["Price"].ToString();
            table += "</div></a>";
            table += "</li>";
            c = c + 1;

        }
        table += "</ul>";
        return table;

    }
    public string ReturnSlideImages()
    {
        string images = "<ul class=\"slides\">";
        DataTable dtimg = new DataTable();
        dtimg = ProductFunctions.Get_Random_Products();
        foreach (DataRow drimg in dtimg.Rows)
        {
            images += "<li><img src=\"../UploadImages/"+drimg["Prod_Image"].ToString()+"\"/></li>";
        }
        images += "</ul>";
        return images;
    }
   
}