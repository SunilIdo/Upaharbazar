using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for ProductFunctions
/// </summary>
public class ProductFunctions
{
    public static DataTable Select_All_Products()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_all_products";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Get_Selected_Product(int pid)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "get_selected_product";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@pdid";
        param.Value = pid;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
    public static void Update_Product(int pid,string pname, int catid, float price, int porder, string pstat, string pimg, string descript, string odescript, string pgtitle, string pgdescript, string keywords, string auth)
    {
        DbCommand cmd = Commandaccess.commandaccess(); ;
        cmd.CommandText = "update_product";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@pid";
        param.Value = pid;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@catid";
        param.Value = catid;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pname";
        param.Value = pname;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pgtitle";
        param.Value = pgtitle;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@price";
        param.Value = price;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pgdescript";
        param.Value = pgdescript;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pstatus";
        param.Value = pstat;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@porder";
        param.Value = porder;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pimgfile";
        param.Value = pimg;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@odescript";
        param.Value = odescript;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pdescript";
        param.Value = descript;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@keywords";
        param.Value = keywords;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@author";
        param.Value = auth;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);

    }
    public static void Insert_Product(string name, int catid, float price, int porder, string pstat, string pimg, string descript, string odescript, string pgtitle, string pgdescript, string keywords, string auth)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "insert_product";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@pnam";
        param.Value=name;
        cmd.Parameters.Add(param);
         param = cmd.CreateParameter();
        param.ParameterName = "@catid";
        param.Value=catid;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@price";
        param.Value=price;
        cmd.Parameters.Add(param);
         param = cmd.CreateParameter();
        param.ParameterName = "@porder";
        param.Value=porder;
        cmd.Parameters.Add(param);
         param = cmd.CreateParameter();
        param.ParameterName = "@pstat";
        param.Value=pstat;
        cmd.Parameters.Add(param);
         param = cmd.CreateParameter();
        param.ParameterName = "@pimg";
        param.Value=pimg;
        cmd.Parameters.Add(param);

        param = cmd.CreateParameter();
        param.ParameterName = "@descript";
        param.Value=descript;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@odescript";
        param.Value=odescript;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pgtitle";
        param.Value=pgtitle;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@pgdescript";
        param.Value=pgdescript;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@keywords";
        param.Value=keywords;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@author";
        param.Value=auth;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);
    }
    public static DataTable Select_Products_Categorywise(int catid)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "select_products_categorywise";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@catid";
        param.Value = catid;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Get_Random_Product()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "get_random_product";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Get_Random_Products()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "get_randomproducts";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Select_RelatedProducts(int Cat_ID ,int Product_ID)
    {
    DbCommand cmd=Commandaccess.commandaccess();
        cmd.CommandText="Select_RelatedProducts";
        DbParameter param=cmd.CreateParameter();
        param.ParameterName="@Cat_ID";
        param.Value=Cat_ID;
        cmd.Parameters.Add(param);
        param=cmd.CreateParameter();
        param.ParameterName="@Product_ID";
        param.Value=Product_ID;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }
    public static DataTable Get_Searched_Products(string Keyword)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Get_Searched_Products";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@keyword";
        param.Value = Keyword;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);

    }
    public static DataTable Return_Sorted_Products(int OrderType, int Cat_ID,int ItemPerPage,int StartIndex)
    {
        DbCommand cmd=Commandaccess.commandaccess();
        cmd.CommandText="Return_Sorted_Products";
        DbParameter param=cmd.CreateParameter();
        param.ParameterName="@OrderType";
        param.Value=OrderType;
        cmd.Parameters.Add(param);
        param=cmd.CreateParameter();
        param.ParameterName="@Cat_ID";
        param.Value=Cat_ID;
        cmd.Parameters.Add(param);
        param=cmd.CreateParameter();
        param.ParameterName="@ItemPerPage";
        param.Value=ItemPerPage;
        cmd.Parameters.Add(param);
        param=cmd.CreateParameter();
        param.ParameterName="@StartIndex";
        param.Value=StartIndex;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
}
    public static DataTable Return_Sorted_ProductsViaPrice(int OrderType, int ItemPerPage, int StartIndex, float MinPrice, float MaxPrice)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Return_Sorted_ProductsViaPrice";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@OrderType";
        param.Value = OrderType;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@ItemPerPage";
        param.Value = ItemPerPage;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@StartIndex";
        param.Value = StartIndex;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@MinPrice";
        param.Value = MinPrice;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@MaxPrice";
        param.Value = MaxPrice;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    } 
}