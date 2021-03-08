using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BHConsole.Models
{
    public class Connection
    {
        public SqlConnection conn { get; }

        public Connection()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BHDBConnectionString"].ConnectionString);
        }

        public static Connection GetConnection()
        {
            Connection sessionObject = (Connection)HttpContext.Current.Session["SQLConnection"];

            if(sessionObject == null)
            {
                HttpContext.Current.Session["SQLConnection"] = new Connection();
            }
            return (Connection)HttpContext.Current.Session["SQLConnection"];
        }
    }
}