using System;
using System.Collections.Generic;
using System.Web;
using System.Text;

/// <summary>
/// Summary description for RandomStringFunction
/// </summary>
public class RandomStringFunction
{
	public RandomStringFunction()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    static Random _Random = new Random();
    public static string CreateARandomString(int StringLength)
    {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i <= StringLength; i++)
        {
            sb.Append(Convert.ToChar(Convert.ToInt32(Math.Floor(26 * _Random.NextDouble() + 65))));
        }
        return sb.ToString();
    }
}