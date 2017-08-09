using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["ADMINID"] = "1005";
        if (!IsPostBack)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
            {
                UserName.Text = Request.Cookies["UNAME"].Value;
                Password.Attributes["value"] = Request.Cookies["PWD"].Value;
                CheckBox1.Checked = true;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        UserDao userDao = new UserDao();

        DataTable dataTable = new DataTable();

        dataTable = userDao.getUser(UserName.Text, Password.Text);

        if (dataTable.Rows.Count != 0)
        {


            if (CheckBox1.Checked)
            {
                Response.Cookies["UNAME"].Value = UserName.Text;
                Response.Cookies["PWD"].Value = Password.Text;

                Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);

            }
            else
            {
                Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
            }

            String userType = dataTable.Rows[0][5].ToString().Trim();

            if (userType == "U")
            {
                Session["Type"] = "User";
                Session["USERNAME"] = UserName.Text;
                Session["UID"] = dataTable.Rows[0][0].ToString().Trim();
                Response.Redirect("~/Books.aspx");
            }
            else if (userType == "A")
            {
                Session["Type"] = "Admin";
                Session["USERNAME"] = UserName.Text;
                Session["UID"] = dataTable.Rows[0][0].ToString().Trim();
                Response.Redirect("~/AdminHome.aspx");
            }

        }
        else
        {
            lblError.Text = "Invalid Username or Password !";
        }
    }
}