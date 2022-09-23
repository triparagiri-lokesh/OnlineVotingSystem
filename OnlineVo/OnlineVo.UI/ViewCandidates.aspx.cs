using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineVo.UI
{
    public partial class GetCandidate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Getcadidatelinkbutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Voter Page.aspx");
        }
    }
}