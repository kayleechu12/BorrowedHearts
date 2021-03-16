using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BHConsole.Models
{
    public class ShopperVisit
    {
        private Shopper shopper;
        private Visit visit;

        public ShopperVisit 
            (
            string name, 
            string email, 
            string phone, 
            string address, 
            int firstVisit, 
            int numberOfChildren, 
            string caseWorkerName, 
            int relationToChildren, 
            string relationOtherDescription
            )
        {
            this.shopper = new Shopper();
            this.shopper.Name = name;
            this.shopper.Email = email;
            this.shopper.Phone = phone;
            this.shopper.Address = address;
            this.visit = new Visit();
            this.visit.FirstVisit = firstVisit;
            this.visit.NumberOfChildren = numberOfChildren;
            this.visit.CaseWorkerName = caseWorkerName;
            this.visit.RelationToChildren = relationToChildren;
            this.visit.RelationOtherDescription = relationOtherDescription;
        }

        public static void CheckIn(ShopperVisit shopperVisit, SqlConnection conn)
        {
            string shopperSQL = "EXEC ShopperCheckin @Name, @Email, @Phone, @Address, @FirstVisit, @NumberOfChildren, @CaseWorkerName, @RelationToChildren, @RelationOtherDescription";
            using (SqlCommand cmd = new SqlCommand(shopperSQL, conn))
            {
                cmd.Parameters.AddWithValue("@Name", shopperVisit.shopper.Name);
                cmd.Parameters.AddWithValue("@Email", shopperVisit.shopper.Email);
                cmd.Parameters.AddWithValue("@Phone", shopperVisit.shopper.Phone);
                cmd.Parameters.AddWithValue("@Address", shopperVisit.shopper.Address);
                cmd.Parameters.AddWithValue("@FirstVisit", shopperVisit.visit.FirstVisit);
                cmd.Parameters.AddWithValue("@NumberOfChildren", shopperVisit.visit.NumberOfChildren);
                cmd.Parameters.AddWithValue("@CaseWorkerName", shopperVisit.visit.CaseWorkerName);
                cmd.Parameters.AddWithValue("@RelationToChildren", shopperVisit.visit.RelationToChildren);
                cmd.Parameters.AddWithValue("@RelationOtherDescription", shopperVisit.visit.RelationOtherDescription);

                try
                {
                    conn.Open();
                    cmd.ExecuteScalar();
                }
                finally
                {
                    conn.Close();
                }
            }
        }
    }
}