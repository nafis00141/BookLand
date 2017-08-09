using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class AdminHome : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getAllUser();
        }
    }

    public void getAllUser()
    {
        UserDao userDao = new UserDao();

        DataTable dataTable = userDao.getUserAll();

        rptruser.DataSource = dataTable;

        rptruser.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        UserDao userDao = new UserDao();

        userDao.deleteUser(UserID.Text);

        getAllUser();
    }
}