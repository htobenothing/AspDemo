using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebApp
{
    public partial class location : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.locationTableAdapter ta = new DataSet1TableAdapters.locationTableAdapter();
            DataSet1.locationDataTable dt = new DataSet1.locationDataTable();
            ta.Fill(dt);
            grdlocation.DataSource = dt;
            grdlocation.DataBind();
        }
    }
}