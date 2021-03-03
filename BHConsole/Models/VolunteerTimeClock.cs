using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BHConsole.Models
{
    public class VolunteerTimeClock
    {
        Volunteer volunteer;
        DateTime clockIn; //Do we need data members for these?
        DateTime clockOut; // ^^

        public VolunteerTimeClock(Volunteer volunteer)
        {
            this.volunteer = volunteer;
            //this.clockIn = System.DateTime.Now;
        }

        public static void ClockIn(VolunteerTimeClock vtc, SqlConnection conn)
        {
            vtc.clockIn = System.DateTime.Now;

            var sql = "INSERT INTO Volunteers (Name, Phone, Email, TimeClockIn) VALUES (@Name, @Phone, @Email, @TimeClockIn)";
            SqlCommand cmd = new SqlCommand(sql, conn);

            //TODO: Data validation
            cmd.Parameters.AddWithValue("@Name", vtc.volunteer.Name);
            cmd.Parameters.AddWithValue("@Phone", vtc.volunteer.Phone);
            cmd.Parameters.AddWithValue("@Email", vtc.volunteer.Email);
            cmd.Parameters.AddWithValue("@TimeClockIn", vtc.clockIn);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch(Exception exc)
            {
                throw exc;
            }
            finally
            {
                conn.Close();
            }
        }

        public static void ClockOut(string name, SqlConnection conn)
        {
            var sql = "UPDATE Volunteers SET TimeClockOut = @TimeClockOut WHERE Name = @Name";
            SqlCommand cmd = new SqlCommand(sql, conn);

            cmd.Parameters.AddWithValue("@TimeClockOut", System.DateTime.Now);
            cmd.Parameters.AddWithValue("@Name", name);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception exc)
            {
                throw exc;
            }
            finally
            {
                conn.Close();
            }
        }

    }
}