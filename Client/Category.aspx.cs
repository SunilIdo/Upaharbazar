using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Category : System.Web.UI.Page
{
  static   int LoadCount = 0;
    static int Cat_ID;
    string txtcategories = "";
    string txtmobmenuitems = "";
    float countshowitem;
    
    static float TotalNoOfProducts;
    int startindex;
    int sorttype;
    static int pagenumber;
    string ReturnHTML = "";
     
    public void SetCookies()
    {
        try
        {
            countshowitem = float.Parse(drpdwnshowitems.SelectedValue.ToString());
            Response.Cookies["NoOfShowItem"].Value = drpdwnshowitems.SelectedValue.ToString();
            Response.Cookies["NoOfShowItem"].Expires = System.DateTime.Now.AddHours(2);
        }
        catch
        {
            Response.Cookies["NoOfShowItem"].Value = "9";
            Response.Cookies["NoOfShowItem"].Expires = System.DateTime.Now.AddHours(2);
        }
        try
        {
            Response.Cookies["SortType"].Value = drpdwnsorttype.SelectedValue.ToString();
            Response.Cookies["SortType"].Expires = System.DateTime.Now.AddHours(2);
        }
        catch
        {
            Response.Cookies["SortType"].Value = "1";
            Response.Cookies["SortType"].Expires = System.DateTime.Now.AddHours(2);
        }

        Response.Write("<br/>cookies value no of item : " + Request.Cookies["NoOfShowItem"].Value.ToString());
        Response.Write("<br/>cookies value SortType : " + Request.Cookies["SortType"].Value.ToString());
       

    }
    protected void drpdwnshowitems_SelectedIndexChanged(object sender, EventArgs e)
    {
        SetCookies();
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
          
       // SetCookies();
        

        if (!IsPostBack)
        {
            LoadCount = 0;
            DataTable dtno = ShowItemsFunctions.Select_All_Numbers();
            DataRow dr = dtno.NewRow();
            dr["NoOfProduct"] = "--Select One--";
            dtno.Rows.InsertAt(dr, 0);
            drpdwnshowitems.DataSource = dtno;
            drpdwnshowitems.DataTextField = "NoOfProduct";
            drpdwnshowitems.DataValueField = "NoOfProduct";
            drpdwnshowitems.DataBind();
            drpdwnsorttype.DataSource = DataSortTypeValues.CreateDataSource();
            drpdwnsorttype.DataTextField = "Text";
            drpdwnsorttype.DataValueField = "Value";
            drpdwnsorttype.DataBind();
            
        }

        if (LoadCount == 0)
        {
            Response.Write(LoadCount.ToString());
            getInitialValue();
        }
        else
        {
            try
            {
                countshowitem = float.Parse(drpdwnshowitems.SelectedValue);
            }
            catch
            {
                countshowitem = 9;
            }
            if (pagenumber >= TotalNoOfProducts / countshowitem)
            {
                pagenumber = 1;
            }
        }
        LoadCount = 1;
        
           
       
       

        Response.Write("Page " + pagenumber+",Items "+countshowitem);
       
        startindex = (pagenumber - 1) * (int)countshowitem + 1;
        showitem.InnerHtml = countshowitem.ToString() + " item(s)";

        txtcategories += "<ul>";
        try
        {
            Cat_ID = int.Parse(Request.QueryString["Cat_ID"].ToString());
            TotalNoOfProducts = ProductFunctions.Select_Products_Categorywise(Cat_ID).Rows.Count;
        }
        catch (Exception ex)
        {
            Response.Write("<script type=\"text/javascript\">alert('" + ex.Message + "')</script>");
        }
        DataTable dt = MenusFunctions.Select_Parent_CategoriesForMenu();
        foreach (DataRow dr in dt.Rows)
        {
            txtcategories += "<li class=\"\"><a href=\"Category.aspx?Cat_ID=" + dr["Cat_ID"].ToString() + "\" title=\"" + dr["Cat_Name"].ToString() + "\">" + dr["Cat_Name"].ToString() + "</a>";
            txtmobmenuitems += "<li class=\"parent\"><a href=\"Category.aspx?Cat_ID=" + dr["Cat_ID"].ToString() + "\" title=\"" + dr["Cat_Name"].ToString() + "\">" + dr["Cat_Name"].ToString() + "</a>";
            DataTable dt2 = MenusFunctions.Select_Child_CategoriesForSubMenu(int.Parse(dr["Cat_ID"].ToString()));
            if (dt2.Rows.Count > 0)
            {
                txtcategories += ReturnSubMenus(int.Parse(dr["Cat_ID"].ToString()));
                txtmobmenuitems += ReturnSubMenus(int.Parse(dr["Cat_ID"].ToString()));
                txtcategories += "</li>";
                txtmobmenuitems += "</li>";
            }
            else
            {
                txtcategories += "</li>";
                txtmobmenuitems += "</li>";
            }
        }
        txtcategories += "</ul>";
        txtmobmenuitems += "</ul>";
        categories.InnerHtml = txtcategories;
        //not set
        //Response.Write("<br/>cookies value no of item : " + Request.Cookies["NoOfShowItem"].Value.ToString());
        //Response.Write("<br/>cookies value SortType : " + Request.Cookies["SortType"].Value.ToString());
        ReturnHTML = ReturnProduct();

        
    }

    public string ReturnHTMLValue()
    {
        return ReturnHTML;
    }


    public void getInitialValue()
    {
        try
        {
             countshowitem = float.Parse(Request.Cookies["NoOfShowItem"].Value.ToString());
            drpdwnshowitems.SelectedValue = countshowitem.ToString();

        }
        catch
        {
            countshowitem = 9;
            drpdwnshowitems.SelectedValue = countshowitem.ToString();
        }
        try
        {
            
            sorttype = int.Parse(Request.Cookies["SortType"].Value.ToString());
            drpdwnsorttype.SelectedValue = sorttype.ToString();

        }
        catch
        {
            sorttype = 1;
            drpdwnsorttype.SelectedValue = sorttype.ToString();

        }
        try
        {
            pagenumber = int.Parse(Request.QueryString["PageNo"].ToString());

        }
        catch
        {
            pagenumber = 1;
        }
    }

    public string ReturnProduct()
    {
        int totalproduct = 0;
        string products = "<ul class=\"product-grid\">";
        try
        {
            countshowitem = float.Parse(drpdwnshowitems.SelectedValue.ToString());
        }
        catch
        {
            countshowitem = 9;
        }
        int c = 0;
        Response.Write(sorttype + "," + (int)countshowitem + "," + startindex);
        DataTable dt4 = ProductFunctions.Return_Sorted_Products(sorttype, Cat_ID, (int)countshowitem, startindex);
        foreach (DataRow dr in dt4.Rows)
        {
            if (c == 3)
            {
                products += "</ul><ul class=\"product-grid\">";
                c = 0;
            }
            products += "<li><div class=\"pro-img\">";
            products += "<a href=\"ProductView.aspx?pid=" + dr["Product_ID"] + "\"><img width=\"150px\" height=\"130px\" title=\"\" alt=\"Products\" src=\"../UploadImages/" + dr["Product_Image"].ToString() + "\" />";
            products += "</div><div class=\"pro-content\"><p>";
            products += dr["Product_Name"].ToString();
            products += "</p></div><div class=\"pro-price\">" + dr["Price"].ToString();
            products += "</div></a>";
            products += "</li>";
            c = c + 1;
            totalproduct += 1;
        }
        products += "</ul>";
        showitem.InnerHtml = totalproduct.ToString() + "item(s)";
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

    public string Return_PageLinks()
    {
        float NoOfPage;
        int countpage;
        string Pagelinks = string.Empty;
        NoOfPage = TotalNoOfProducts / countshowitem;
        if (TotalNoOfProducts % countshowitem == 0)
        {
            countpage = (int)NoOfPage;
        }
        else
        {
            countpage = (int)NoOfPage + 1;
        }
        for (int i = 1; i <= countpage; i++)
        {
            if (i == pagenumber)
            {
                Pagelinks += "<li>" + i + "</li>";
            }
            else
            {
                Pagelinks += "<li><a href=\"Category.aspx?Cat_ID=" + Cat_ID + "&PageNo=" + i + "\" title=\"Page" + i + "\" class=\"\">" + i + "</a></li></span>";
            }
        }
        return Pagelinks;
    }
    protected void drpdwnsorttype_SelectedIndexChanged(object sender, EventArgs e)
    {
        SetCookies();
    }
}

         