using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for OccasionFunctions
/// </summary>
public class OccasionFunctions
{
    public static DataTable Select_All_Occasions()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_all_occasions";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static void Insert_Occasion(string nam, DateTime date, string descript)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "insert_occasion";
        DbParameter param = cmd.CreateParameter();
        param = cmd.CreateParameter();
        param.ParameterName = "@name";
        param.Value = nam;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@date";
        param.Value = date;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@descript";
        param.Value = descript;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);
    
    }
    public static void Update_Occasion(int OID, string name, string dt, string descript)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "update_occasion";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Occasionid";
        param.Value = OID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@nam";
        param.Value =name;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@date";
        param.Value = dt;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@descript";
        param.Value = descript;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);
    }

    public static DataTable Get_Selected_Occasion(int oid)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "get_selected_occasion";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@oid";
        param.Value = oid;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }

}