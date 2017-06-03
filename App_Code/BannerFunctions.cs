using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for BannerFunctions
/// </summary>
public class BannerFunctions
{
    public static DataTable Select_All_Banners()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_all_banners";
        return Commandaccess.executeselectcmd(cmd);

    }
    public static DataTable Get_Selected_Banner(int bid)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "get_selected_banner";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@bannerid";
        param.Value = bid;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
    public static void Insert_Banner(string title,string imgfile,string status,int order,string descript)
    {
        DbCommand cmd=Commandaccess.commandaccess();
        cmd.CommandText="insert_banner";
        DbParameter param=cmd.CreateParameter();
        param.ParameterName="@bannerimg";
        param.Value=imgfile;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@title";
        param.Value = title;
        cmd.Parameters.Add(param);
        param=cmd.CreateParameter();
        param.ParameterName="@status";
        param.Value=status;
        cmd.Parameters.Add(param);
        param=cmd.CreateParameter();
        param.ParameterName="@order";
        param.Value=order;
        cmd.Parameters.Add(param);
        param=cmd.CreateParameter();
        param.ParameterName="@descript";
        param.Value=descript;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);
    }
    public static void Update_Banner(int bid,string title, string imgfile, string status, int order, string descript)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "update_banner";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@bannerid";
        param.Value = bid;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@bannerimg";
        param.Value = imgfile;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@title";
        param.Value = title;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@status";
        param.Value = status;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@order";
        param.Value = order;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@descript";
        param.Value = descript;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);

    }
}