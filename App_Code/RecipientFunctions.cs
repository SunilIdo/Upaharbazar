using System;
using System.Collections.Generic;
using System.Web;
using System.Data.Common;
using System.Data;

/// <summary>
/// Summary description for RecipientFunctions
/// </summary>
public class RecipientFunctions
{
    public static DataTable Select_All_Recipients()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_all_recipients";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Get_Selected_Recipients(int GiftSenderId)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Get_Selected_Recipients";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@GiftSenderID";
        param.Value = GiftSenderId;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Get_SelectedRecipient(int Recipient_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Get_SelectedRecipient";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Recipient_ID";
        param.Value = Recipient_ID;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);

    
    }
    public static int Insert_Recipient(string Full_Name, string Email_ID, string Title, string Gender, string Country, string City, string Tole_Street, int Zip_Postal_Code, int Home_Phone, Int64 Mobile_No,Int64 User_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "insert_recipient";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Full_Name";
        param.Value = Full_Name;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Email_ID";
        param.Value = Email_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Title";
        param.Value = Title;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Gender";
        param.Value = Gender;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Country";
        param.Value = Country;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@City";
        param.Value = City;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Tole_Street";
        param.Value = Tole_Street;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Zip_Postal_Code";
        param.Value = Zip_Postal_Code;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Home_Phone";
        param.Value = Home_Phone;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Mobile_No";
        param.Value = Mobile_No;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@User_ID";
        param.Value = User_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Recipient_ID";
        param.Direction = ParameterDirection.Output;
        param.Size = 5;
        cmd.Parameters.Add(param);
        // Commandaccess.executeselectcmd(cmd);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        int Recipient_ID = int.Parse(cmd.Parameters["@Recipient_ID"].Value.ToString());
        cmd.Connection.Close();
        return (Recipient_ID);
       
    }
    public static void Update_RecipientInfo(int Recipient_ID,string Full_Name, string Email_ID, string Title, string Gender, string Country, string City, string Tole_Street, int Zip_Postal_Code, int Home_Phone, Int64 Mobile_No)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Update_RecipientInfo";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Full_Name";
        param.Value = Full_Name;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Recipient_ID";
        param.Value = Recipient_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Email_ID";
        param.Value = Email_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Title";
        param.Value = Title;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Gender";
        param.Value = Gender;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Country";
        param.Value = Country;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@City";
        param.Value = City;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Tole_Street";
        param.Value = Tole_Street;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Zip_Postal_Code";
        param.Value = Zip_Postal_Code;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Home_Phone";
        param.Value = Home_Phone;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Mobile_No";
        param.Value = Mobile_No;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);
    }
    public static DataTable Get_RecipientDetailViaOrderId(int Order_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Get_RecipientDetailViaOrderId";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Order_ID";
        param.Value = Order_ID;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
}