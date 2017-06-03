using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default2 : System.Web.UI.Page
{
    static int pid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        
        if (txtproductid.Text != "")
        {
            pid = int.Parse(txtproductid.Text);
            try
            {
                DataTable dt = ProductFunctions.Get_Selected_Product(pid);
                imgitempic.ImageUrl = "~/UploadImages/" + dt.Rows[0]["Prod_Image"].ToString();
                lblname.Text = dt.Rows[0]["Name"].ToString();
                lblprice.Text = dt.Rows[0]["Price"].ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script language=\"javascript\">alert('" + ex.Message + "')</script>");
            }

        }
        
    }
    int SetCookiesShoppingCart()
    {
        int Orderid = OrderFunctions.Get_Order_ID();
        Response.Write(Orderid);
        Response.Cookies["ShoppingCart"].Value = Orderid.ToString();
        Response.Cookies["ShoppingCart"].Expires = System.DateTime.Now.AddMinutes(30);
        return Orderid;
    }
    protected void btnaddtocart_Click(object sender, EventArgs e)
    {
        string ShoppingCartId = "";
        try
        {
            ShoppingCartId = Request.Cookies["ShoppingCart"].Value.ToString();
            OrderFunctions.Insert_Order_Product(int.Parse(ShoppingCartId), int.Parse(drpdwnqty.SelectedValue.ToString()), float.Parse(lblprice.Text), 0, int.Parse(txtproductid.Text));

        }
        catch
        {
            int OrderId = SetCookiesShoppingCart();
            OrderFunctions.Insert_Order_Product(OrderId, int.Parse(drpdwnqty.SelectedValue.ToString()), float.Parse(lblprice.Text), 0, int.Parse(txtproductid.Text));

        }
    }
    protected void byncheckout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Client/Checkoutstep1.aspx");
    }
}