using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for ShowItemsFunctions
/// </summary>
public class ShowItemsFunctions
{
    public static DataTable Select_All_Numbers()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Select_All_Numbers";
        return Commandaccess.executeselectcmd(cmd);
    }


}