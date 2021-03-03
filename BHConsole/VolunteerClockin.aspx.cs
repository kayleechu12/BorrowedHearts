using BHConsole.Models;
using System;
using System.Collections.Generic;
using System.Configuration; //added for sql connection
using System.Data.SqlClient; //added for sql connection
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BHConsole
{
    public partial class VolunteerClockin : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BHDBConnectionString1"].ConnectionString);
        }

        protected void btn_clockin_Click(object sender, EventArgs e)
        {
            //TODO: Move into VolunteerTimeClock.cs
            Volunteer volunteer = new Volunteer();
            volunteer.Name = txt_name.Text;
            volunteer.Phone = txt_phone.Text;
            volunteer.Email = txt_email.Text;
            VolunteerTimeClock vtc = new VolunteerTimeClock(volunteer);

            VolunteerTimeClock.ClockIn(vtc, conn);
            
            //TODO: Redirect
        }

        protected void btn_clockout_Click(object sender, EventArgs e)
        {
            if(dd_clockedin.SelectedValue != null)
            {
                VolunteerTimeClock.ClockOut(dd_clockedin.SelectedValue, conn);
                
            }
            //TODO: Redirect
        }
    }
}