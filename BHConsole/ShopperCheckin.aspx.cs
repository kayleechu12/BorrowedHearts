using BHConsole.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BHConsole
{
    public partial class ShopperCheckin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_checkin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int numberOfChildren;
                int relationToChildren;

                numberOfChildren = Convert.ToInt32(txt_numberOfChildren.Text);
                if (numberOfChildren > 250)
                {
                    numberOfChildren = 250;
                }

                relationToChildren = rbl_relationship.SelectedIndex;

                ShopperVisit shopperVisit = new ShopperVisit(txt_name.Text, txt_email.Text, txt_phone.Text, txt_address.Text, rbl_firstTime.SelectedIndex, numberOfChildren, txt_caseWorker.Text, relationToChildren, txt_other.Text);
                ShopperVisit.CheckIn(shopperVisit, Connection.GetConnection().conn);
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}