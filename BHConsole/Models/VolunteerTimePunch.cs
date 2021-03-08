using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BHConsole.Models
{
    public class VolunteerTimePunch
    {
        private Volunteer volunteer;
        private TimePunch timePunch;

        public VolunteerTimePunch(string name, string phone, string email)
        {
            volunteer = new Volunteer();
            this.volunteer.Name = name;
            this.volunteer.Phone = phone;
            this.volunteer.Email = email;
            timePunch = new TimePunch();
            this.timePunch.ClockInTime = System.DateTime.Now;
            this.timePunch.Type = 1;
        }

        public static void ClockIn(VolunteerTimePunch vtp, SqlConnection conn)
        {
            //Only adds the volunteer object right now
            //TODO: Create a timePunch and add that to the VolunteerTimePunch object, add insert for the time_punch and volunteer_time_punch tables

            //Creates volunteer object and inserts it into the corresponding table and keeps track of the id to use for foreign keys
            string volunteerSQL = "INSERT INTO volunteer (name, phone, email) VALUES (@Name, @Phone, @Email) SELECT SCOPE_IDENTITY()";
            string volunteerId = "";
            string timePunchId = "";
            //NOTE: Surely there is a better way to keep track of ids for foreign keys than using select scope_identity
            //TODO: Data validation
            using (SqlCommand cmd = new SqlCommand(volunteerSQL, conn))
            {
                cmd.Parameters.AddWithValue("@Name", vtp.volunteer.Name);
                cmd.Parameters.AddWithValue("@Phone", vtp.volunteer.Phone);
                cmd.Parameters.AddWithValue("@Email", vtp.volunteer.Email);
                
                try
                {
                    conn.Open();
                    volunteerId = cmd.ExecuteScalar().ToString();
                }
                finally
                {
                    conn.Close();
                }
            }

            //If volunteerId is still empty here there is an error

            //TimePunch -- do we need the model?
            string timePunchSQL = "INSERT INTO time_punch (time_in, time_punch_type) VALUES (GETDATE(), @Type) SELECT SCOPE_IDENTITY()";
            using (SqlCommand cmd = new SqlCommand(timePunchSQL, conn))
            {
                //cmd.Parameters.AddWithValue("@In", vtp.timePunch.ClockInTime);
                cmd.Parameters.AddWithValue("@Type", vtp.timePunch.Type);

                try
                {
                    conn.Open();
                    timePunchId = cmd.ExecuteScalar().ToString();
                }
                finally
                {
                    conn.Close();
                }
            }

            //VolunteerTimePunch
            string volunteerTimePunchSQL = "INSERT INTO volunteer_time_punch (volunteer_id, time_punch_id) VALUES (@volunteer_id, @time_punch_id)";
            using (SqlCommand cmd = new SqlCommand(volunteerTimePunchSQL, conn))
            {
                cmd.Parameters.AddWithValue("@volunteer_id", volunteerId);
                cmd.Parameters.AddWithValue("@time_punch_id", timePunchId);
                

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                finally
                {
                    conn.Close();
                }
            }
        }

        public static void ClockOut(string name, SqlConnection conn)
        {
            //Get the TP ID
            string TimePunchSQL = "SELECT t.id FROM((dbo.volunteer_time_punch vtp INNER JOIN dbo.volunteer v ON vtp.volunteer_id = v.id) INNER JOIN time_punch t ON vtp.time_punch_id = t.id) WHERE time_out IS NULL AND name = @Name";
            string timePunchId = "";
            using (SqlCommand cmd = new SqlCommand(TimePunchSQL, conn))
            {
                cmd.Parameters.AddWithValue("@Name", name);

                try
                {
                    conn.Open();
                    timePunchId = cmd.ExecuteScalar().ToString();
                }
                finally
                {
                    conn.Close();
                }
            }

            //Update the correct time_punch using the id
            string updateSQL = "UPDATE time_punch SET time_out = GETDATE() WHERE id = @id";
            using (SqlCommand cmd = new SqlCommand(updateSQL, conn))
            {
                cmd.Parameters.AddWithValue("@id", timePunchId);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                finally
                {
                    conn.Close();
                }
            }
        }

    }
}