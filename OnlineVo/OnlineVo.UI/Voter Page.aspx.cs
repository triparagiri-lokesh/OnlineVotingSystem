using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVo.UI
{
    public partial class Voter_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CandidateList_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("GetCandidates.aspx");
        }

        protected void Vote_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vote.aspx");
        }

        

        protected void Clogoutlinkbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void VoteView_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("View Vote");
        }
    }
}