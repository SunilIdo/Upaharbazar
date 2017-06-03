using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for Commandaccess
/// </summary>
public class Commandaccess
{

    public static DbCommand commandaccess()
    {
      DbProviderFactory factory = DbProviderFactories.GetFactory(connectionsetting.getprovidername);
      DbConnection conn = factory.CreateConnection();
      conn.ConnectionString = connectionsetting.getconnectionstring;
      DbCommand cmd = conn.CreateCommand();
      cmd.CommandType = CommandType.StoredProcedure;
      return cmd;
    }
    public static DataTable executeselectcmd(DbCommand cmd)
    {
        cmd.Connection.Open();
        DbDataReader rdr = cmd.ExecuteReader();
        DataTable tbl = new DataTable();
        tbl.Load(rdr);
        cmd.Connection.Close();
        return tbl;
    }
    public static void executeinsertcmd(DbCommand cmd)
    {
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
    }
    public static void executedeletecmd(DbCommand cmd)
    {
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
    }


}