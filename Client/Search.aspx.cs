using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{
    static string Keyword="";
    string txtcategories = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Keyword = Request.QueryString["Keyword"].ToString();
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert('" + ex.Message + "')</script>");
        }
            txtcategories += "<ul>";
        DataTable dt = MenusFunctions.Select_Parent_CategoriesForMenu();
        foreach (DataRow dr in dt.Rows)
        {
            txtcategories += "<li class=\"\"><a href=\"Category.aspx?Cat_ID=" + dr["Cat_ID"].ToString() + "\" title=\"" + dr["Cat_Name"].ToString() + "\">" + dr["Cat_Name"].ToString() + "</a>";
            DataTable dt2 = MenusFunctions.Select_Child_CategoriesForSubMenu(int.Parse(dr["Cat_ID"].ToString()));
            if (dt2.Rows.Count > 0)
            {
                txtcategories += ReturnSubMenus(int.Parse(dr["Cat_ID"].ToString()));

                txtcategories += "</li>";

            }
            else
            {
                txtcategories += "</li>";
            }
        }
        txtcategories += "</ul>";
        categories.InnerHtml = txtcategories;
    }
    public string ReturnProduct()
    {
        string products = "<ul class=\"product-grid\">";
        int c = 0;
        DataTable dt = ProductFunctions.Get_Searched_Products(Keyword);
        foreach (DataRow dr in dt.Rows)
        {
            if (c == 3)
            {
                products += "</ul><ul class=\"product-grid\">";
                c = 0;
            }
            products += "<li><div class=\"pro-img\">";
            products += "<a href=\"ProductView.aspx?pid=" + dr["Product_ID"] + "\"><img width=\"150px\" height=\"130px\" title=\"\" alt=\"Products\" src=\"../UploadImages/" + dr["Prod_Image"].ToString() + "\" />";
            products += "</div><div class=\"pro-content\"><p>";
            products += dr["Name"].ToString();
            products += "</p></div><div class=\"pro-price\">" + dr["Price"].ToString();
            products += "</div></a>";
            products += "</li>";
            c = c + 1;

        }
        products += "</ul>";
        return products;

    }
    public string ReturnSubMenus(int Cat_ID)
    {
        string submenus = "<ul>";
        DataTable dt3 = MenusFunctions.Select_Child_CategoriesForSubMenu(Cat_ID);
        foreach (DataRow dr3 in dt3.Rows)
        {
            submenus += "<li><a href=\"Category.aspx?Cat_ID=" + dr3["Cat_ID"].ToString() + "\" title=\"" + dr3["Cat_Name"].ToString() + "\">" + dr3["Cat_Name"].ToString() + "</a>";
            DataTable dt4 = MenusFunctions.Select_Child_CategoriesForSubMenu(int.Parse(dr3["Cat_ID"].ToString()));
            if (dt4.Rows.Count > 0)
            {
                submenus += ReturnSubMenus(int.Parse(dr3["Cat_ID"].ToString()));
                submenus += "</li>";
            }
            else
            {
                submenus += "</li>";
            }
        }
        submenus += "</ul>";
        return submenus;
    }
}