using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVo.UI
{
    public partial class Admin_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        

        protected void ViewVotersLAV_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("View VoterList.aspx");
        }

        protected void AddCandidate_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCandidate.aspx");
        }

       
        protected void Candidatelistbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CandidateList.aspx");
        }

        protected void Logoutlinkbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}