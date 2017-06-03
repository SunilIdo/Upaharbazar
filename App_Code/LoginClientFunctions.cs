using System;
using System.Collections.Generic;
using System.Web;
using System.Data.Common;
using System.Data;

/// <summary>
/// Summary description for LoginClientFunctions
/// </summary>
public class LoginClientFunctions
{
    public static DataTable Select_Login_User(string Email_ID, string Password)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Select_Login_User";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Email_ID";
        param.Value = Email_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Password";
        param.Value = Password;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
}