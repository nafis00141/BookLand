using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Session["UID"] = null;
        getAllBooks();
    }

    public void getAllBooks()
    {
        BookDAO booktDao = new BookDAO();

        DataTable dataTable = booktDao.getBooks();

        rptrProducts.DataSource = dataTable;

        rptrProducts.DataBind();
    }
    public void getAllBooks(String bName)
    {
        BookDAO booktDao = new BookDAO();

        DataTable dataTable = booktDao.getBooks(bName);

        rptrProducts.DataSource = dataTable;

        rptrProducts.DataBind();
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        String bName = UserID.Text;

        if (bName != null)
        {
            getAllBooks(bName);
        }
    }
}