using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPage : System.Web.UI.Page
{
    public bool on = false;

    
    protected void Page_Load(object sender, EventArgs e)
    {
        on = false;

        if (Request.QueryString["uid"] != null)
        {
            if(Request.QueryString["uid"] == Session["UID"].ToString())
            {
                on = true;
            }

            int UID = Convert.ToInt32(Request.QueryString["uid"]);

            if (!IsPostBack)
            {
                getuser(UID);
                getbookbyuser(UID);
            }
        }
        else
        {
            Response.Redirect("~/Users.aspx");
        }
    }

    public void getuser(int uID)
    {
        UserDao userDao = new UserDao();

        DataTable dataTable = userDao.getUser(uID.ToString());

        rptruser.DataSource = dataTable;

        rptruser.DataBind();

    }

    public void getbookbyuser(int uID)
    {
        BookDAO booktDao = new BookDAO();

        DataTable dataTable = booktDao.getBooksbyuser(uID);

        Repeater1.DataSource = dataTable;

        Repeater1.DataBind();

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["uid"] != null)
        {
            String UID = Request.QueryString["uid"];

            Response.Redirect("~/cashOut.aspx?id="+UID);


        }
        else
        {
            Response.Redirect("~/Users.aspx");
        }
    }
}