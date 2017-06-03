using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{
    static int pid = 0;
    static int Cat_ID;
    string moreviewimages="";
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Response.Write(pid.ToString());
        try
        {
            pid = int.Parse(Request.QueryString["pid"]);
           DataTable dt = ProductFunctions.Get_Selected_Product(pid);
           Cat_ID = int.Parse(dt.Rows[0]["Cat_ID"].ToString());
           ProductImage.ImageUrl = "~/UploadImages/" + dt.Rows[0]["Prod_Image"].ToString();
           string prodname = dt.Rows[0]["Name"].ToString();
           string price =dt.Rows[0]["Price"].ToString();
           lblProductDescription.Text = dt.Rows[0]["Descript"].ToString();
            //productname.InnerHtml = prodname;
            //Productprice.InnerHtml = price;
           lblproductname.Text = prodname;
            lblprice.Text = price;
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert('" + ex.Message + "')</script>");
        }

        string likeproducts = "<ul id=\"like-pro\" class=\"product-grid\">";
         string relatedproducts="<ul id=\"related-pro\" class=\"product-grid\">";
        DataTable dt2=ProductFunctions.Select_RelatedProducts(Cat_ID,pid);
        foreach(DataRow dr2 in dt2.Rows)
        {
            likeproducts += "<li><div class=\"pro-img\"><a href=\"ProductView.aspx?pid=" + dr2["Product_ID"] + "\"><img width=\"169px\" height=\"170px\" title=\"Freature Product\" alt=\"Freature Product\" src=\"../UploadImages/" + dr2["Prod_Image"].ToString() + "\"/></div>";
            likeproducts+="<div class=\"pro-detail-block\"><h4 class=\"pro-name\">"+dr2["Name"].ToString()+"</h4>";
            likeproducts+="<div class=\"pro-price\">Rs. "+dr2["Price"].ToString()+"</div></div></a></li>";
            relatedproducts += "<li><div class=\"pro-img\"><a href=\"ProductView.aspx?pid=" + dr2["Product_ID"] + "\"><img width=\"169px\" height=\"170px\" title=\"Freature Product\" alt=\"Freature Product\" src=\"../UploadImages/" + dr2["Prod_Image"].ToString() + "\"/></div>";
            relatedproducts+="<div class=\"pro-detail-block\">";
            relatedproducts+="<h4 class=\"pro-name\">"+dr2["Name"].ToString()+"</h4>";
            relatedproducts+="<div class=\"pro-price\">Rs. "+dr2["Price"].ToString()+"</div></div></a></li>";
            moreviewimages += "<li><a class=\"ajax\" href=\"../UploadImages/" + dr2["Prod_Image"].ToString() + "\"><img src=\"../UploadImages/" + dr2["Prod_Image"].ToString() + "\"/></a></li>";
		}
        likeproducts+="</ul>";
        relatedproducts+="</ul>";
        //likepro.InnerHtml = likeproducts;
        relatedpro.InnerHtml=relatedproducts;
       moreView.InnerHtml = moreviewimages;
		
						
    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        //if (txtproductid.Text != "")
        //{
            //pid = int.Parse(txtproductid.Text);
           

        //}
    }
    // Insert Order in Orders table and returns currently created Order_ID 
    int SetCookiesShoppingCart()
    {
        int Orderid = OrderFunctions.Get_Order_ID();
        Response.Write(Orderid);
        Response.Cookies["ShoppingCart"].Value = Orderid.ToString();
       // Response.Cookies["ShoppingCart"].Expires = System.DateTime.Now.AddMinutes(60);
        return Orderid;
    }
    protected void btnaddtocart_Click(object sender, EventArgs e)
    {
       
        string ShoppingCartId = "";
        try
        {
            ShoppingCartId = Request.Cookies["ShoppingCart"].Value.ToString();
            OrderFunctions.Insert_Order_Product(int.Parse(ShoppingCartId), int.Parse(txtqty.Text), float.Parse(lblprice.Text), 0, pid);

        }
        catch
        {
            int OrderId = SetCookiesShoppingCart();
            OrderFunctions.Insert_Order_Product(OrderId, int.Parse(txtqty.Text), float.Parse(lblprice.Text), 0,pid);

        }
        Response.Redirect(Request.RawUrl);
    }
  
  
}