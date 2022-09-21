using Microsoft.Ajax.Utilities;
using OnlineVo.BusinessLayer;
using OnlineVo.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.EnterpriseServices;
using System.EnterpriseServices.Internal;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace OnlineVo.UI
{
    public partial class Vote1 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Votebutton_Click1(object sender, EventArgs e)
        {
            Votebutton.Enabled = false;
            lblmsg.Text = "Your Vote is Done Sucessfully";
        }

        protected void LogoutVlinkbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}