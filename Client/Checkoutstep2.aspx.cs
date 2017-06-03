using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Client_Default3 : System.Web.UI.Page
{
    static bool checkifDropdownActivate = false;
    static string FullName = "";
    static string GiftSenderID = "";
    static string ShoppingCartID = "";
    static int Recipient_ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            GiftSenderID = Session["GiftSenderID"].ToString();
            ShoppingCartID = Request.Cookies["ShoppingCart"].Value.ToString();
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"JavaScript\">alert('" + ex.Message + "')</Script>");
        }
            try
        {
            if (!IsPostBack)
            {
                DataTable dtdashain = new DataTable();
                dtdashain = OccasionFunctions.Select_All_Occasions();
                DataRow dr = dtdashain.NewRow();
                dr["Occasion_Name"] = "--Select One--";
                dtdashain.Rows.InsertAt(dr, 0);
                drpdwnoccasion.DataSource = dtdashain;
                drpdwnoccasion.DataValueField = "Occasion_ID";
                drpdwnoccasion.DataTextField = "Occasion_Name";
                drpdwnoccasion.DataBind();
                if (RecipientFunctions.Get_Selected_Recipients(int.Parse(Session["GiftSenderID"].ToString())).Rows.Count >= 1)
                {
                  
                    Load_Recipients();
                }
                else
                {

                    Response.Write("<script language=\"JavaScript\">alert('You have no recipients before. Add Now.')</Script>");
                   
                }

            }

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
    void Load_Recipients()
    {
       
        DataTable dt = RecipientFunctions.Get_Selected_Recipients(int.Parse(GiftSenderID));
        DataRow dr = dt.NewRow();
        dr["Full_Name"] = "--Select One--";
        dt.Rows.InsertAt(dr, 0);
        drpdwnrecipients.DataSource = dt;
        drpdwnrecipients.DataTextField = "Full_Name";
        drpdwnrecipients.DataValueField = "Recipient_ID";
        drpdwnrecipients.DataBind();
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {

        if (checkifDropdownActivate == true)
        {
            Recipient_ID = int.Parse(drpdwnrecipients.SelectedValue.ToString());

        }
        else
        {
            FullName = txtfirstnameto.Text + " " + txtmiddlenameto.Text + " " + txtlastnameto.Text;
            try
            {

                Recipient_ID = RecipientFunctions.Insert_Recipient(FullName, txtemailto.Text, drpdwntitleto.SelectedValue, drpdwngenderto.SelectedValue, drpdwncountryto.SelectedValue, txtcityto.Text, txttolestreetto.Text, int.Parse(txtzippostalto.Text), int.Parse(txthomephoneto.Text), Int64.Parse(txtmobileto.Text), int.Parse(GiftSenderID));
                Response.Write("<script language=\"JavaScript\">alert('Recipient's Info Saved Successfully')</Script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script language=\"JavaScript\">alert('" + ex.Message + "')</Script>");
            }
        }
        
        try
        {
            OrderFunctions.Insert_Order_Detail(int.Parse(ShoppingCartID), Recipient_ID, txtmessage.Text, int.Parse(drpdwnoccasion.SelectedValue), txtDate.Text, int.Parse(GiftSenderID));
            Response.Redirect("~/Client/Checkoutstep3.aspx?RId=" + Recipient_ID);
        }
        catch (Exception ex)
        {
            Response.Write("<script language=\"JavaScript\">alert('" + ex.Message + "')</Script>");
        }

    }
    protected void drpdwnrecipients_TextChanged(object sender, EventArgs e)
    {
        checkifDropdownActivate = true;
        string fullname = "";
        string[] names;
        string firstname = "";
        string secondname = "";
        string thirdname = "";


        DataTable dt = RecipientFunctions.Get_SelectedRecipient(int.Parse(drpdwnrecipients.SelectedValue.ToString()));
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

        txtfirstnameto.Text = firstname;
        txtmiddlenameto.Text = secondname;
        txtlastnameto.Text = thirdname;
        txtmobileto.Text = dt.Rows[0]["Mobile_No"].ToString();
        txthomephoneto.Text = dt.Rows[0]["Home_Phone"].ToString();
        txttolestreetto.Text = dt.Rows[0]["Tole_Street"].ToString();
        txtzippostalto.Text = dt.Rows[0]["Zip_Postal_Code"].ToString();
        txtcityto.Text = dt.Rows[0]["City"].ToString();
        drpdwncountryto.Text = dt.Rows[0]["Country"].ToString();
        drpdwngenderto.Text = dt.Rows[0]["Gender"].ToString();
        txtemailto.Text = dt.Rows[0]["Email_ID"].ToString();
    }
    protected void drpdwnrecipients_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtmiddlenameto_TextChanged(object sender, EventArgs e)
    {

    }
}