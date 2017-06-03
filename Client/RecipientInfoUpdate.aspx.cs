using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default : System.Web.UI.Page
{
    static int Recipient_ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        string fullname = "";
        string[] names;
        string firstname = "";
        string secondname = "";
        string thirdname = "";
        if (!IsPostBack)
        {
            Recipient_ID = int.Parse(Request.QueryString["Recipient_ID"].ToString());
            DataTable dt = RecipientFunctions.Get_SelectedRecipient(Recipient_ID);
            fullname = dt.Rows[0]["Full_Name"].ToString();
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
            txtcityto.Text = dt.Rows[0]["City"].ToString();
            txtemailto.Text = dt.Rows[0]["Email_ID"].ToString();
            txtfirstnameto.Text = firstname;
            txtmiddlenameto.Text = secondname;
            txtlastnameto.Text = thirdname;
            txthomephoneto.Text = dt.Rows[0]["Home_Phone"].ToString();
            txtmobileto.Text = dt.Rows[0]["Mobile_No"].ToString();
            txttolestreetto.Text = dt.Rows[0]["Tole_Street"].ToString();
            txtzippostalto.Text = dt.Rows[0]["Zip_Postal_Code"].ToString();
            drpdwncountryto.Text = dt.Rows[0]["Country"].ToString();
            drpdwngenderto.Text = dt.Rows[0]["Gender"].ToString();
            drpdwntitleto.Text = dt.Rows[0]["Title"].ToString();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string FullName = txtfirstnameto.Text + " " + txtmiddlenameto.Text + " " + txtlastnameto.Text;
        try
        {
            RecipientFunctions.Update_RecipientInfo(Recipient_ID, FullName, txtemailto.Text, drpdwntitleto.SelectedValue, drpdwngenderto.SelectedValue, drpdwncountryto.SelectedValue, txtcityto.Text, txttolestreetto.Text, int.Parse(txtzippostalto.Text), int.Parse(txthomephoneto.Text), Int64.Parse(txtmobileto.Text));
            Response.Write("<script language=\"JavaScript\">alert('Your Recipient's Data Updated Successfully')</script>");
           //message not displayed

        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"javascript\" type=\"text/javascript\">alert('" + ex.Message + "')</script>");
        }
    }
}