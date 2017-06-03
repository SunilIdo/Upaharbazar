using System;
using System.Collections.Generic;
using System.Web;
using System.Configuration;

/// <summary>
/// Summary description for Connectionsetting
/// </summary>
public class connectionsetting
{
    static string connectionstring;
    static string providername;
    static connectionsetting()
    {
        connectionstring = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        providername = ConfigurationManager.ConnectionStrings["con"].ProviderName;

    }
    public static string getconnectionstring
    {
        get { return connectionstring; }
    }
    public static string getprovidername
    {
        get { return providername; }
    }
    
}