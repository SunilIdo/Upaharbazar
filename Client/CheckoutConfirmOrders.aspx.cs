using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{
    static float grandtotal=0;
    static int User_ID;
    static string toDelete = "";
    static string toDeleteItemname = "";
    int rowindex;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            User_ID = int.Parse(Session["GiftSenderID"].ToString());
            int Order_ID = int.Parse(Request.Cookies["ShoppingCart"].Value.ToString());
            string table = "<table cellspacing=\"10\"><tr><th>SN</th><th>Items</th><th>Detail</th><th>Qty</th><th>Price</th><th>Total</th><th></th></tr>";
            int c = 0;
            DataTable dt = OrderFunctions.Get_Order_Detail(Order_ID);
            foreach (DataRow dr in dt.Rows)
            {
                float qty = float.Parse(dr["Quantity"].ToString());
                float price = float.Parse(dr["Price"].ToString());
                float total = qty * price;
                grandtotal += total;
                c = c + 1;
                table += "<tr><td>" + c + "</td><td><div><img width=\"40\" height=\"40\" src=\"../UploadImages/" + dr["Prod_Image"].ToString() + "\"/><br/><span>" + dr["Name"].ToString() + "</span></div></td><td>" + dr["Descript"].ToString() + "</td><td>" + qty + "</td><td>" + price + "</td><td>" + total + "</td><td><input id=\"btndelete\" type=\"button\" value=\"Delete\" onclick=\"btndelte_Click\"/></td></tr>";


            }
            table += "<tr colspan=6><td align=\"Right\"><span>Grand Total:</span>&nbsp&nbsp<span>" + grandtotal + "</span></td></table>";
            //ShowOrderDetail.InnerHtml = table;
            DataTable dt2 = OccasionFunctions.Select_All_Occasions();
            foreach (DataRow dr2 in dt2.Rows)
            {
                if (DateTime.Parse(dt2.Rows[0]["Occasion_Date"].ToString()).Day - DateTime.Now.Day <= 42)
                {
                    Response.Write("<script language=\"javascript\">alert('" + dt2.Rows[0]["Occasion_Name"].ToString() + " is coming.Do you have a gift to be sent?')</script>");
                }
                else
                {

                }
            }
            if (!IsPostBack)
            {
                GridViewOrders.DataSource = dt;
                GridViewOrders.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert('" + ex.Message + "')</script>");
            //Response.Redirect("Checkoutstep1.aspx");
        }
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        Response.Cookies["GrandTotal"].Value = grandtotal.ToString();
        Response.Redirect("Checkoutstep2.aspx");
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        
    }

   
        //Response.Write("<script language=\"javascript\">alert('Row deleted')</script>");
   
    protected void GridViewOrders_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {

            OrderFunctions.Delete_OrderProduct(int.Parse(toDelete));
            
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\">alert('" + ex.Message + "')</script>");
        }
        Response.Write("<script language=\"javascript\">alert('" + GridViewOrders.Rows[0].Cells[0].Text + "')</script>");
         
    }
    protected void GridViewOrders_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        Response.Write("<script language=\"javascript\">alert('" + toDeleteItemname + " item deleted successfully from your gift cart.')</script>");
    }
    
    protected void GridViewOrders_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button btn = (Button)e.Row.FindControl("btndelete");
            btn.Attributes.Add("onclick", "javascript:return " + "confirm('Are you sure to delete " + DataBinder.Eval(e.Row.DataItem, "Name") + " item?')");
            toDelete = DataBinder.Eval(e.Row.DataItem, "OP_id").ToString();
            toDeleteItemname = DataBinder.Eval(e.Row.DataItem, "Name").ToString();
            rowindex = e.Row.RowIndex;
        }
    }
   protected void btndelete_Command(Object sender,CommandEventArgs e)
    {

        GridViewOrders.DeleteRow(rowindex);
        Response.Redirect(Request.RawUrl);
    }


}