using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebApp
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            calDOB.Visible = false;
            
            
        }


        protected void ibtnCalender_Click(object sender, ImageClickEventArgs e)
        {
            calDOB.Visible = true;
        }

        protected void calDOB_SelectionChanged(object sender, EventArgs e)
        {
            txtDOB.Text = calDOB.SelectedDate.ToShortDateString();
            calDOB.Visible = false;
        }

        protected void cblInterest_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/advancePage");
        }

    }
}