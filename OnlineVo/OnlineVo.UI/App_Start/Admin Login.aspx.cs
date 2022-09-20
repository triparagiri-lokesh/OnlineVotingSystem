using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVo.UI.App_Start
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        

        protected void Validate(object sender, EventArgs e)
        {
            string AUname = txtAusername.Text;
            string APassword = txtApassword.Text;
            if((AUname=="Lokesh" && APassword == "12345") || (AUname=="Sai" && APassword=="67890"))
            {
                Response.Redirect("~/Admin Page");
            }
            else
            {
                lblmsg.Text = "Invalid Userdetails";
            }

            
        }
    }
}