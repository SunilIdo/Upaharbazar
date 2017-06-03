using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for MetaTagFunctions
/// </summary>
public class MetaTagFunctions
{
	
    public static void Insert_Meta_Tags(string pgtitle,string pgdescript,string keyword,string auth)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "insert_metatag";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@pgtitle";
        param.Value = pgtitle;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pgdescript";
        param.Value = pgdescript;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@keywords";
        param.Value = keyword;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@auth";
        param.Value = auth;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);
    }
    public static DataTable Select_MetaTag_ID(string pgtitle)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_metatag_id";
       return Commandaccess.executeselectcmd(cmd);

    }
}