using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{
    static int User_ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        User_ID = int.Parse(Session["GiftSenderID"].ToString());
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string password="";
        DataTable dt = UserClientFunctions.Get_Selected_ClientUser(User_ID);
        password = dt.Rows[0]["Password"].ToString();
        if (password==txtoldpassword.Text)
        {
            if (txtnewpassword.Text == txtconfirmpassword.Text)
            {
                try
                {
                    UserClientFunctions.UserPasswordChange(User_ID, txtnewpassword.Text);
                    Response.Write("<script language=\"JavaScript\">alert('Your password changed Successfully')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script language=\"JavaScript\">alert('" + ex.Message + "')</script>");
                }
            }
            else
            {
                Response.Write("<script language=\"JavaScript\">alert('Your Password Missmatch.Please Confirm.')</script>");
                txtconfirmpassword.Focus();
            }
        }
        else
        {
            Response.Write("<script language=\"JavaScript\">alert('Your Old Password is wrong!')</script>");
            txtoldpassword.Focus();
        }

    }
}