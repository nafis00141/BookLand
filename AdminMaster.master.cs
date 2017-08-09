using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   public void adm(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Session["UID"] = null;
        Response.Redirect("~/Default.aspx");
    }
}
