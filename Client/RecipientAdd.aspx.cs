using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_Default2 : System.Web.UI.Page
{
    static string FullName = "";
    static string SessionValue = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        FullName = txtfirstnameto.Text + " " + txtmiddlenameto.Text + " " + txtlastnameto.Text;
        Response.Write(SessionValue);

        try
        {
            SessionValue = Session["GiftSenderID"].ToString();
            RecipientFunctions.Insert_Recipient(FullName, txtemailto.Text, drpdwntitleto.SelectedValue, drpdwngenderto.SelectedValue, drpdwncountryto.SelectedValue, txtcityto.Text, txttolestreetto.Text, int.Parse(txtzippostalto.Text), int.Parse(txthomephoneto.Text), Int64.Parse(txtmobileto.Text), int.Parse(SessionValue));
            Response.Write("<script language=\"JavaScript\">alert('Recipient's Info Saved Successfully')</Script>");
            ClearFields();
            txtfirstnameto.Focus();
            Response.Redirect("~/Client/Checkoutstep3.aspx");

        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"JavaScript\">alert('" + ex.Message + "')</Script>");
        }
    }
    void ClearFields()
    {

        txtcityto.Text = "";
        txtemailto.Text = "";
        txtfirstnameto.Text = "";
        txthomephoneto.Text = "";
        txtlastnameto.Text = "";
        txtmiddlenameto.Text = "";
        txtmobileto.Text = "";
        txttolestreetto.Text = "";
        txtzippostalto.Text = "";

    }
}