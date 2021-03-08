using BHConsole.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BHConsole
{
    public partial class VolunteerOverview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Custom data source for displaying the full volunteer_time_punch table
            //string sql = "SELECT v.name, v.phone, v.email, t.time_in, t.time_out FROM volunteer_time_punch vtp INNER JOIN volunteer v ON vtp.volunteer_id = v.id INNER JOIN time_punch t ON vtp.time_punch_id = t.id";
            //SqlCommand cmd = new SqlCommand(sql, Connection.GetConnection().conn);
            //SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //adapter.Fill(dt);
            //GridView3.DataSource = dt;
            //GridView3.DataBind();
        }
    }
}