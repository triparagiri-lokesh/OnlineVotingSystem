using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineVo.Entities;
using OnlineVo.BusinessLayer;

namespace OnlineVo.UI
{
    public partial class AddCandidate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Candidate(object sender, EventArgs e)
        {
            try
            {

                Candidate candidate = new Candidate();
                candidate.candidate_no = int.Parse(txtno.Text);
                candidate.candidate_name = txtname.Text;
                candidate.party_name = txtpartyname.Text;
                candidate.contactno = txtcontactno.Text;
                CandidateService candidateServices = new CandidateService();
                candidateServices.AddCandidate(candidate);
                lblmsg.Text = "Record Added";
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message;
            }

        }

        protected void addcandidatelinkbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin Page.aspx");
        }
    }
}