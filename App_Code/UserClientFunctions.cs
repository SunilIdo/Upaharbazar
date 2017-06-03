using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for UserClientFunctions
/// </summary>
public class UserClientFunctions
{
	public static DataTable Select_All_ClientUsers()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_all_clientusers";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Get_Selected_ClientUser(int User_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Get_Selected_ClientUser";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@User_ID";
        param.Value = User_ID;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Is_User_Exist(string Email_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Is_User_Exist";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Email_ID";
        param.Value = Email_ID;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
    public static void Insert_ClientUser(string FullName,string Email_ID,string Password,string Title,string Gender,string Country,string City,string Tole_Street,int Zip_Postal_Code,int Home_Phone,Int64 Mobile_No)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "insert_clientuser";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@FullName";
        param.Value = FullName;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Email_ID";
        param.Value = Email_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Password";
        param.Value = Password;
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
        Commandaccess.executeselectcmd(cmd);
    }
    public static void Update_ClientUserInfo(int User_ID,string FullName, string Email_ID, string Title, string Gender, string Country, string City, string Tole_Street, int Zip_Postal_Code, int Home_Phone, Int64 Mobile_No)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Update_ClientUserInfo";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@FullName";
        param.Value = FullName;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@User_ID";
        param.Value = User_ID;
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
    public static void UserPasswordChange(int User_ID, string Password)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "UserPasswordChange";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@User_ID";
        param.Value = User_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Password";
        param.Value =Password;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);

    }
}