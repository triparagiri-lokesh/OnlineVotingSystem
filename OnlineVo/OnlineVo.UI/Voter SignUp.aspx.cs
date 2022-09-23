using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineVo.Entities;
using OnlineVo.BusinessLayer;

namespace OnlineVo.UI.App_Start
{
    public partial class VoterRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        

        

        protected void SignUp_Button_Click(object sender, EventArgs e)
        {
            try
            {

                Voter voter = new Voter();
                voter.voterId = int.Parse(txtId.Text);
                voter.voterName = txtname.Text;
                voter.fatherName = txtfathername.Text;
                voter.gender = rlgender.Text;
                voter.dob = txtDob.Text;
                voter.email = txtemail.Text;
                voter.mobileno = txtmobileno.Text;
                
                voter.voterPassword = txtpassword.Text;
                VoterService voterService = new VoterService();
                voterService.AddVoter(voter);
                lblmsg.Text = "Sign Up is Done Sucessfully";
            }
            catch (Exception ex)
            {
                lblmsg.Text = ex.Message;
            }

        }
    }
}