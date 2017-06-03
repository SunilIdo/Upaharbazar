using System;
using System.Collections.Generic;
using System.Web;
using System.Data.Common;
using System.Data;

/// <summary>
/// Summary description for OrderFunctions
/// </summary>
public class OrderFunctions
{
    public static int Get_Order_ID()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "InsertOrder";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@date";
        param.Value = System.DateTime.Now;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Order_Status";
        param.Value =0;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@id";
        param.Direction = ParameterDirection.Output;//confuse here

        param.Size = 5;
        cmd.Parameters.Add(param);

       // Commandaccess.executeinsertcmd(cmd);
        
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        string Orderid = cmd.Parameters["@id"].Value.ToString();
        cmd.Connection.Close();
        return (int.Parse(Orderid));
    }
    public static void Insert_Order_Product(int @Order_ID, int @Quantity, float @Rate, float @Discount, int @Product_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "InsertOrderProduct";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Order_ID";
        param.Value = Order_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Quantity";
        param.Value = Quantity;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Rate";
        param.Value = Rate;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Discount";
        param.Value = Discount;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Product_ID";
        param.Value = Product_ID;
        cmd.Parameters.Add(param);
        
        Commandaccess.executeinsertcmd(cmd);
    }
    public static DataTable Get_Order_Detail(int Order_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Get_Order_Detail";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Order_ID";
        param.Value = Order_ID;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);

    }

   
    public static DataTable Get_Active_Shopping_cart(string Cart_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "SelectActiveCart";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@id";
        param.Value = Cart_ID;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);

    }

   
    public static void Insert_Order_Detail(int Order_ID,int Recipient_ID,string Message,int Occasion_ID,string Delivery_Date,int User_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Insert_Order_Detail";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Order_ID";
        param.Value = Order_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Recipient_ID";
        param.Value = Recipient_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Message";
        param.Value = Message;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Occasion_ID";
        param.Value = Occasion_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Delivery_Date";
        param.Value = Delivery_Date;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@User_ID";
        param.Value = User_ID;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);
    }
    public static void Update_Order_Detail(int Order_Detail_ID, string Payment_Type, string Payment_Status,float Total_Amount)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Update_Order_Detail";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Order_Detail_ID";
        param.Value = Order_Detail_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Payment_Type";
        param.Value = Payment_Type;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Payment_Status";
        param.Value = Payment_Status;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Total_Amount";
        param.Value = Total_Amount;
        cmd.Parameters.Add(param);
        
        Commandaccess.executeinsertcmd(cmd);
    }
    public static void Delete_OrderProduct(int OP_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Delete_OrderProduct";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@OP_ID";
        param.Value = OP_ID;
        cmd.Parameters.Add(param);
        Commandaccess.executedeletecmd(cmd);
    }
    public static DataTable SelectAllPastOrderViaUserId(int User_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "SelectAllPastOrderViaUserId";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@User_ID";
        param.Value = User_ID;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);
    }

    public static DataTable Get_PastOrderDetailViaOrderId(int Order_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Get_PastOrderDetailViaOrderId";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Order_ID";
        param.Value = Order_ID;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);

    }
    public static DataTable Get_OrderDetailIdViaOrderId(int Order_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Get_OrderDetailIdViaOrderId";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Order_ID";
        param.Value = Order_ID;
        cmd.Parameters.Add(param);
        return Commandaccess.executeselectcmd(cmd);

    }
    public static DataTable Select_AllOrders()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Select_AllOrders";
        return Commandaccess.executeselectcmd(cmd);
    }
    public static void UpdateOrderStatus(int Order_ID)
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "UpdateOrderStatus";
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@Order_ID";
        param.Value = Order_ID;
        cmd.Parameters.Add(param);
        param = cmd.CreateParameter();
        param.ParameterName = "@Order_Status";
        param.Value = 1;
        cmd.Parameters.Add(param);
        Commandaccess.executeinsertcmd(cmd);

    }
    public static DataTable Select_OrdersTobePaid()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Select_OrdersTobePaid";
        return Commandaccess.executeselectcmd(cmd);

    }
    public static DataTable Select_OrdersTobeDelivered()
    {
        DbCommand cmd = Commandaccess.commandaccess();
        cmd.CommandText = "Select_OrdersTobeDelivered";
        return Commandaccess.executeselectcmd(cmd);

    }
}