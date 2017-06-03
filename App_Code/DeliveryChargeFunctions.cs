using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for DeliveryChargeFunctions
/// </summary>
public class DeliveryChargeFunctions
{
    public static DataTable Select_All_DeliveryCharges()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_all_deliverycharges";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static void Insert_Delivery_Charge(string destination,float charge, int mintime)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "insert_deliverycharge";
        DbParameter param = cmd.CreateParameter();
        param = cmd.CreateParameter();
        param.ParameterName = "@district";
        param.Value = destination;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@charge";
        param.Value = charge;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@mindeliverytime";
        param.Value = mintime;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);

    }
    public static void Update_Delivery_Charge(int chargeid, string destination, float charge,int mintime)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "update_deliverycharge";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@chargeid";
        param.Value = chargeid;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@district";
        param.Value = destination;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@charge";
        param.Value = charge;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@mindeliverytime";
        param.Value = mintime;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);
    }

    public static DataTable Get_Selected_Charge(int chargeid)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "get_selected_deliverycharge";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@chargeid";
        param.Value = chargeid;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
}