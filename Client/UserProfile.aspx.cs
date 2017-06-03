using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{
    static float grandtotal = 0;
    static int User_ID;
    static int Order_ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        string fullname = "";
        string[] names;
        string firstname = "";
        string secondname = "";
        string thirdname = "";
      
     
            User_ID = int.Parse(Session["GiftSenderID"].ToString());
            DataTable dt = UserClientFunctions.Get_Selected_ClientUser(User_ID);
            fullname = dt.Rows[0]["FullName"].ToString();
            names = fullname.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
            if (names.Length == 2)
            {
                firstname = names[0];
                secondname = " ";
                thirdname = names[1];
            }
            else if (names.Length >= 3)
            {
                firstname = names[0];
                secondname = names[1];
                thirdname = names[2];
                Response.Write(names.Length);
            }
            else { }
            txtcityfrom.Text = dt.Rows[0]["City"].ToString();
            txtemailfrom.Text = dt.Rows[0]["Email_ID"].ToString();
            txtfirstnamefrom.Text = firstname;
            txtmiddlenamefrom.Text = secondname;
            txtlastnamefrom.Text = thirdname;
            txthomephonefrom.Text = dt.Rows[0]["Home_Phone"].ToString();
            txtmobilefrom.Text = dt.Rows[0]["Mobile_No"].ToString();
            txttolestreet.Text = dt.Rows[0]["Tole_Street"].ToString();
            txtzippostalfrom.Text = dt.Rows[0]["Zip_Postal_Code"].ToString();
            drpdwncountryfrom.Text = dt.Rows[0]["Country"].ToString();
            drpdwngenderfrom.Text = dt.Rows[0]["Gender"].ToString();
            drpdwntitlefrom.Text = dt.Rows[0]["Title"].ToString();
        }
       
        }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string FullName = txtfirstnamefrom.Text + " " + txtmiddlenamefrom.Text + " " + txtlastnamefrom.Text;
        try
        {
            UserClientFunctions.Update_ClientUserInfo(User_ID, FullName, txtemailfrom.Text, drpdwntitlefrom.SelectedValue, drpdwngenderfrom.SelectedValue, drpdwncountryfrom.SelectedValue, txtcityfrom.Text, txttolestreet.Text, int.Parse(txtzippostalfrom.Text), int.Parse(txthomephonefrom.Text), Int64.Parse(txtmobilefrom.Text));
            Response.Write("<script language=\"JavaScript\">alert('Your Data Updated Successfully')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"JavaScript\">alert('" + ex.Message + "')</script>");
        }
    }
   
}