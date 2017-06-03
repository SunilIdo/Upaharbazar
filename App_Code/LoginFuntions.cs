using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;

/// <summary>
/// Summary description for LoginFuntions
/// </summary>
/// 
 
public class LoginFuntions
{
    public static DataTable select_unam_pw(string unam,string pw)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "validate_uname_pw";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@unam";
        param.Value = unam;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pw";
        param.Value = pw;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
}