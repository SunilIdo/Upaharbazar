using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  protected void btnsubmit_Click(object sender, EventArgs e)
   {

       if ((string.IsNullOrEmpty(txtmiddlenamefrom.Text)) && (string.IsNullOrEmpty(txtzippostalfrom.Text)))
       {
           txtmiddlenamefrom.Text = "";
           txtzippostalfrom.Text = "";
       }
       string FullName = "";
       FullName = txtfirstnamefrom.Text + " " + txtmiddlenamefrom.Text + " " + txtlastnamefrom.Text;
       if (txtpassword.Text == txtconfirmpassword.Text)
       {
           if (UserClientFunctions.Is_User_Exist(txtemailfrom.Text).Rows.Count != 0)
           {
               Response.Write("<script language=\"JavaScript\">alert('This user already exists.')</Script>");
           }
           else
           {
               try
               {
                   UserClientFunctions.Insert_ClientUser(FullName, txtemailfrom.Text, txtpassword.Text, drpdwntitlefrom.SelectedValue, drpdwngenderfrom.SelectedValue, drpdwncountryfrom.SelectedValue, txtcityfrom.Text, txttolestreet.Text, int.Parse(txtzippostalfrom.Text), int.Parse(txthomephonefrom.Text), Int64.Parse(txtmobilefrom.Text));
                   Response.Write("<script language=\"JavaScript\">alert('You are registered')</Script>");
                   ClearFields();
                   txtfirstnamefrom.Focus();
                   Response.Redirect("Login.aspx");
               }
               catch (Exception ex)
               {
                   Response.Write("<script language=\"JavaScript\">alert('" + ex.Message + "')</Script>");
               }
           }
       }
       else
       {
           Response.Write("<script language=\"JavaScript\">alert('Your password is mismatched!!!')</Script>");
           txtpassword.Focus();
       }
  }
   
    void ClearFields()
    {
        txtpassword.Text = "";
        txtcityfrom.Text = "";
        txtconfirmpassword.Text = "";
        txtemailfrom.Text = "";
        txtfirstnamefrom.Text = "";
        txthomephonefrom.Text = "";
        txtlastnamefrom.Text = "";
        txtmiddlenamefrom.Text = "";
        txtmobilefrom.Text = "";
        txttolestreet.Text = "";
        txtzippostalfrom.Text = "";
    
    }
}