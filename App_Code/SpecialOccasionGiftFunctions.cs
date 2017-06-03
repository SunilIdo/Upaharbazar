using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for SpecialOccasionGiftFunctions
/// </summary>
public class SpecialOccasionGiftFunctions
{
    public static DataTable Select_All_OccasionGifts()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_all_occasiongifts";
        return Commandaccess.executeselectcmd(cmd);
    }

}