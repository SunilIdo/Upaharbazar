using System;
using System.Collections.Generic;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for DataSortTypeValues
/// </summary>
public class DataSortTypeValues
{
    public static DataTable CreateDataSource()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add(new DataColumn("Text", typeof(string)));
        dt.Columns.Add(new DataColumn("Value", typeof(string)));
        dt.Rows.Add(CreateRow("--Select One--", -1, dt));
        dt.Rows.Add(CreateRow("Ascending", 1, dt));
        dt.Rows.Add(CreateRow("Descendging", 0, dt));
        return dt;
    }
    public static DataRow CreateRow(string text, int value, DataTable dt)
    {
        DataRow dr = dt.NewRow();
        dr[0] = text;
        dr[1] = value;
        return dr;

    }
	public DataSortTypeValues()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}