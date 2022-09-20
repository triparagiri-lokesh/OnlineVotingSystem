using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Services.Description;

namespace OnlineVo.UI.App_Start
{
    public partial class Candidate_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      

        public void Validate(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineVotingconn"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Voter where VoterId=@voterId and VoterPassword=@password", con);
            cmd.Parameters.AddWithValue("@voterId", txtVid.Text);
            cmd.Parameters.AddWithValue("@password", txtVpassword.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            
            
            
            if(dt.Rows.Count > 0)
            {
                Response.Redirect("Voter Page.aspx");
                
            }
            else
            {
                lblmsg.Text = "check your VoterId and Password";
            }

        }

       
    }
}