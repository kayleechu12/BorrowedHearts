using BHConsole.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BHConsole
{
    public partial class VolunteerClockout : System.Web.UI.Page
    {
        //SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            //conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BHDBConnectionString"].ConnectionString);
            //conn = Connection.GetConnection().conn;
        }

        protected void btn_clockout_Click(object sender, EventArgs e)
        {
            if (dd_clockedin.SelectedValue != null)
            {
                VolunteerTimePunch.ClockOut(Convert.ToInt64(dd_clockedin.SelectedValue), Connection.GetConnection().conn);
            }
            //TODO: Redirect to dashboard or something
            Response.Redirect("~/Volunteers.aspx");
        }
    }
}