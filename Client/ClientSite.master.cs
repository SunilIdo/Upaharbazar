using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;

public partial class Client_ClientSite : System.Web.UI.MasterPage
{
    string smoothmenuitems = "";
      string ShoppingCartId = "";
    static int ItemCount;
    protected void Page_Load(object sender, EventArgs e)
    {
        lnkMyActiveOrders.Visible = false;
        lnkMyPastOrders.Visible = false;
        //lnkcheckout.Visible = false;
        //lnkcheckoutfromcart.Visible = false;
        try
        {
            ShoppingCartId = Request.Cookies["ShoppingCart"].Value.ToString();
            Response.Write("shopping cart id =" + ShoppingCartId);

           // lnkcheckout.Visible = true;
            lnkcheckoutfromcart.Visible = true;
        }
        catch
        {
           
            //lnkcheckout.Visible = false;
            lnkcheckoutfromcart.Visible = false;
        }
        try
        {
            Request.Cookies["GiftSenderID"].ToString();
            lnkLogin.Visible = false;
            lnkChangePassword.Visible = true;
            lnkMyProfile.Visible = true;
            lnkMyRecipients.Visible = true;
            lnklogout.Visible = true;
            lnkMyActiveOrders.Visible = true;
            lnkMyPastOrders.Visible = true;
        }
        catch
        {
            lnklogout.Visible = false;
            lnkLogin.Visible = true;
            lnkChangePassword.Visible = false;
            lnkMyProfile.Visible = false;
            lnkMyRecipients.Visible = false;
            lnkMyActiveOrders.Visible = false;
            lnkMyPastOrders.Visible = false;
            //Response.Write(ex.Message);
        }
            string footertext = System.DateTime.Now.Year.ToString();
            LabelYear.Text = footertext;
        

    }
    public string ReturnSubMenus(int Cat_ID)
    {
        string submenus = "<ul>";
        DataTable dt3 = MenusFunctions.Select_Child_CategoriesForSubMenu(Cat_ID);
        foreach (DataRow dr3 in dt3.Rows)
        {
            submenus += "<li><a href=\"Category.aspx?Cat_ID=" + dr3["Cat_ID"].ToString() + "\">" + dr3["Cat_Name"].ToString() + "</a>";
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
    public string Return_CategoryMenus()
    {
        smoothmenuitems += "<ul>";

        DataTable dt2 = MenusFunctions.Select_Parent_CategoriesForMenu();
        foreach (DataRow dr in dt2.Rows)
        {
            smoothmenuitems += "<li><a href=\"Category.aspx?Cat_ID=" + dr["Cat_ID"].ToString() + "\">" + dr["Cat_Name"].ToString() + "</a>";
            //mobmenuitems += "<li><a href=\"Category.aspx?Cat_ID=" + dr["Cat_ID"].ToString() + "\">" + dr["Cat_Name"].ToString() + "</a>";  
            if (dt2.Rows.Count > 0)
            {
                smoothmenuitems += ReturnSubMenus(int.Parse(dr["Cat_ID"].ToString()));
                // mobmenuitems += ReturnSubMenus(int.Parse(dr["Cat_ID"].ToString()));
                smoothmenuitems += "</li>";
                //  mobmenuitems += "</li>";
            }
            else
            {
                smoothmenuitems += "</li>";
                // mobmenuitems += "</li>";
            }
        }
        smoothmenuitems += "</ul>";
        // mobmenuitems += "</ul>";
        return smoothmenuitems;
    }
    public string ReturnMobMenus()
    {
        string mobmenuitems = "";
        mobmenuitems += "<ul>";
        DataTable dtmob = MenusFunctions.Select_Parent_CategoriesForMenu();
        foreach (DataRow drmob in dtmob.Rows)
        {
            mobmenuitems += "<li><a href=\"Category.aspx?Cat_ID=" + drmob["Cat_ID"].ToString() + "\">" + drmob["Cat_Name"].ToString() + "</a>";
            if (dtmob.Rows.Count > 0)
            {

                mobmenuitems += ReturnSubMenus(int.Parse(drmob["Cat_ID"].ToString()));
                mobmenuitems += "</li>";
            }
            else
            {
                mobmenuitems += "</li>";
            }
        }
        mobmenuitems += "</ul>";
        return mobmenuitems;
    }
    DataTable dtcart = new DataTable();
    public string ReturnCartCount()
    {
        try
        {
            dtcart = OrderFunctions.Get_Order_Detail(int.Parse(ShoppingCartId));
            ItemCount = dtcart.Rows.Count;
            return ItemCount.ToString();
        }
        catch
        {
            return "0";
        }
    }
    public string ReturnOrdersInCart()
    {
        float total = 0;
        string OrdersInCart = "";
        
        
        foreach (DataRow drcart in dtcart.Rows)
        {
            OrdersInCart += "<li><div class=\"img-block\"><img src=\"../UploadImages/" + drcart["Prod_Image"].ToString() + "\" title=\"\" alt=\"\" /></div>";
            OrdersInCart += "<div class=\"detail-block\"><h4><a href=\"#\" title=\"" + drcart["Name"].ToString() + "\">" + drcart["Name"].ToString() + "</a></h4>";
            OrdersInCart += "<p><strong>" + drcart["Quantity"].ToString() + "</strong>x" + drcart["Price"].ToString() + "</p>";
            OrdersInCart += "</div></li>";
            total += float.Parse(drcart["Quantity"].ToString()) * float.Parse(drcart["Price"].ToString());
        }
        OrdersInCart += "<li><div class=\"total-block\">Total:<span>" + total + "</span></div>";
        //OrdersInCart += "";
                  //   <a id=\"lnkcheckoutfromcart\" runat=\"server\" href=\"Checkoutstep1.aspx\" title=\"Checkout\" class=\"colors-btn\">Checkout</a><div class=\"clear\"></div></li></ol>"
        return OrdersInCart;
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        string Keyword="";
        //if (txtsearchkeyword.Text != "")
        //{
        if(Page.IsValid)
        {
            Keyword = txtsearchkeyword.Text;
            Response.Redirect("Search.aspx?Keyword="+Keyword);
        }
        //else
        //{
        //    Response.Write("<script language=\"javascript\">alert('Please insert keyword for search')</script>");
        //    txtsearchkeyword.Focus();
        //}
    }
   
    protected void btnlogout_Click(object sender, EventArgs e)
    {
       // Response.Cookies["GiftSenderID"].Value = string.Empty;
       ////Request.Cookies["GiftSenderID"].Value.Remove(0);
       //// Response.Cookies["GiftSenderID"].Expires = System.DateTime.Now.AddDays(-1);
       // Response.Redirect("Home.aspx");
       // btnlogout.Visible = false;
       // lnkLogin.Visible = true;
    }
    public string Return_CustomerTestimonial()
    {
        string Testimonial = string.Empty;
        DataTable dt = new DataTable();
        dt = Customer_Comment.Get_Random_Comments();
        Testimonial += dt.Rows[0]["Comment"].ToString();
        Testimonial += "<br/>--------" + dt.Rows[0]["Customer_Name"].ToString()+"--------";
       // Response.Write(Testimonial);
        return Testimonial;
    }
}