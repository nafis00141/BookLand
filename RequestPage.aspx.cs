using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RequestPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null && Session["UID"] != null)
        {

        }
        else
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }

    protected void btnRequest_Click(object sender, EventArgs e)
    {
        requestDAO obj = new requestDAO();

        obj.addRequest(new requestDTO(tbBook.Text , tbAuthor.Text, tbType.Text, rbEdition.Text , Session["UID"].ToString()  ) );
       
    }
}