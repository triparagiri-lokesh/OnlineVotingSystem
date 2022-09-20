using OnlineVo.BusinessLayer;
using OnlineVo.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
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
       

        protected void Votebutton_Click(object sender, EventArgs e)
        {

            string myvote = "";

            for (int i = 0; i < Voteradiobutton.Items.Count; i++)
            {
                if (Voteradiobutton.Items[i].Selected)
                {
                    myvote = Voteradiobutton.Items[i].Text;
                    break;
                }
            }
            lblmsg.Text = "Your Vote is done sucessfullly of Candidate no" + myvote;
            

        }



    }
}