using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for LoginData
/// </summary>
public class LoginData
{
    static string uname;
    static string password;
    static LoginData()
    {
       
    }
    public static string getusername
    { 
   get{return uname;}
    }
    public static string getpassword
    {
    get{return password;}
    }


}