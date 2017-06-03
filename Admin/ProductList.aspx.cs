using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    static int catid = 0;
    static int countproduct;
    protected void Page_Load(object sender, EventArgs e)
    {
        catid = int.Parse(Request.QueryString["CategoryId"]);
        DataTable dt=ProductFunctions.Select_Products_Categorywise(catid);
        grdvwproducts.DataSource = dt;
        grdvwproducts.DataBind();
        countproduct = dt.Rows.Count;
    }
    protected void grdvwproducts_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate))
        {
            CheckBox chkbxselect = (CheckBox)e.Row.Cells[1].FindControl("chkselectitem");
            CheckBox chkBxheader = (CheckBox)this.grdvwproducts.HeaderRow.FindControl("chkheader");
         
            chkbxselect.Attributes["onclick"] = string.Format("javascript:ChildClick(this,'{0}');", chkBxheader.ClientID);
        }
    }
   
    protected void btnadd_Click(object sender, EventArgs e)
    {
        int selecteditem=0;
       // CheckBox chkheader = (CheckBox)this.grdvwproducts.HeaderRow.FindControl("chkheader");
       // Type scripttype = this.ClientScript.GetType();
   
            selecteditem = int.Parse(HiddenFieldSelectedItemCounter.Value.ToString());
       
        //if (countproduct==selecteditem)
        //{
            Response.Write("Selected Items no:"+selecteditem);
        //}
       // Response.Write("Selected Items no:" + selecteditem);
       
    }
}