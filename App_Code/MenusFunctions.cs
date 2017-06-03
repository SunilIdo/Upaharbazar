using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for MenusFunctions
/// </summary>
public class MenusFunctions
{
    public static DataTable Select_Parent_CategoriesForMenu()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_parent_categoryformenu";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Select_Child_CategoriesForSubMenu(int Parent_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Select_Child_CategoriesForSubMenu";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Parent_ID";
        param.Value = Parent_ID;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
}