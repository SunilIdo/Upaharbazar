using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for UserFunctions
/// </summary>
public class UserFunctions
{
    public static DataTable Select_All_Users()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_all_users";
        return Commandaccess.executeselectcmd(cmd);
    }
}