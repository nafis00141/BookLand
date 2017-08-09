using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class RequestAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getAllRequest();
        }
    }

    public void getAllRequest()
    {
        requestDAO requestDao = new requestDAO();

        DataTable dataTable = requestDao.getRequest();

        rptruser.DataSource = dataTable;

        rptruser.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        requestDAO requestDao = new requestDAO();

        requestDao.deleteRequest(UserID.Text);

        getAllRequest();

    }
}