using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for PagesFunctions
/// </summary>
public class PagesFunctions
{
    public static DataTable Select_All_Pages()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_all_pages";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Get_Selected_Page(int pageid)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "get_selected_page";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@pageid";
        param.Value = pageid;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
    public static void Insert_Page(string title,string body,string pgtitle,string pgdescript,string keywords,string author,string Status)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "insert_page";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@title";
        param.Value = title;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@body";
        param.Value = body;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pgtitle";
        param.Value = pgtitle;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pgdescript";
        param.Value = pgdescript;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@keywords";
        param.Value = keywords;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@author";
        param.Value = author;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Status";
        param.Value = Status;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);
    }
    public static void Update_Page(int pageid, string title, string body, string pgtitle, string pgdescript, string keywords, string author,string Status)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "update_page";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@title";
        param.Value = title;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pageid";
        param.Value = pageid;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param = cmd.CreateParameter();
        param.ParameterName = "@body";
        param.Value = body;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pgtitle";
        param.Value = pgtitle;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pgdescript";
        param.Value = pgdescript;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@keywords";
        param.Value = keywords;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@author";
        param.Value = author;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Status";
        param.Value = Status;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);
    }
    public static DataTable Get_SelectedFooterPageDetail(string Title)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Get_SelectedFooterPageDetail";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Title";
        param.Value = Title;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
}