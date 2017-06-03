using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

/// <summary>
/// Summary description for CategoryFunctions
/// </summary>
public class CategoryFunctions
{
    public static DataTable Select_all_Categories()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_all_categories";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Get_Selected_Category(int catid)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "get_selected_category";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@catid";
        param.Value = catid;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    
    }
    public static void Update_Category(int catid, string catnam, string catimg,int catorder, string catstat, string pgtitle, string pgdescription, string keywords, string author)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "update_category_data";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@catid";
        param.Value = catid;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@catnam";
        param.Value = catnam;
        cmd.Parameters.Add(param);
      
        param = cmd.CreateParameter();
        param.ParameterName = "@catorder";
        param.Value = catorder;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@catstat";
        param.Value = catstat;
        cmd.Parameters.Add(param);
    
        param = cmd.CreateParameter();
        param.ParameterName = "@imgname";
        param.Value = catimg;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pgtitle";
        param.Value = pgtitle;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pgdescript";
        param.Value = pgdescription;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@keywords";
        param.Value =keywords;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@author";
        param.Value = author;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);


    }
    public static void Insert_Categories(string catnam,string catimg,int parentid,int catorder,string catstat,string pgtitle,string pgdescript,string keywords,string author)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "insert_categories";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@nam";
        param.Value = catnam;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@image";
        param.Value = catimg;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@parentid";
        param.Value = parentid;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@catorder";
        param.Value = catorder;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@catstat";
        param.Value = catstat;
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
        Commandaccess.executeinsertcmd(cmd);
    }
    public static DataTable Select_All_SubCategories(int parentid)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_all_subcategories";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@parentid";
        param.Value = parentid;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Select_AllMainAndSubCategories()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Select_AllMainAndSubCategories";
        return Commandaccess.executeselectcmd(cmd);
    }
}