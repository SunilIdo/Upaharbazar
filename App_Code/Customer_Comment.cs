using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for Customer_Comment
/// </summary>
public class Customer_Comment
{
    public static void Insert_Comment(string Customer_Name, string Email, string Telephone, string Comment)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Insert_Comment";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Customer_Name";
        param.Value = Customer_Name;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Email";
        param.Value = Email;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Telephone";
        param.Value = Telephone;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Comment";
        param.Value = Comment;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);
    }
    public static DataTable Get_Random_Comments()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Get_Random_Comments";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Select_All_Comments()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Select_All_Comments";
        return Commandaccess.executeselectcmd(cmd);

    }

}