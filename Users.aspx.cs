using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getAllUsers();
    }


    public void getAllUsers()
    {
        UserDao userDao = new UserDao();

        DataTable dataTable = userDao.getUserAll();

        rptruser.DataSource = dataTable;

        rptruser.DataBind();
    }

    public void getAllUsers(String name )
    {
        UserDao userDao = new UserDao();

        DataTable dataTable = userDao.getUserByName(name);

        rptruser.DataSource = dataTable;

        rptruser.DataBind();
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        String name = UserID.Text;

        getAllUsers(name);
    }
}