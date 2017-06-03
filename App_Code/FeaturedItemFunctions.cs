using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for FeaturedItemFunctions
/// </summary>
public class FeaturedItemFunctions
{
    public static DataTable Select_All_FeaturedItems()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_all_featureditems";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static void Insert_SelectedItemToFeaturedItems()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Insert_SelectedItemToFeaturedItems";

    }
}