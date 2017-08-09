using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookProcess : System.Web.UI.Page
{
    public int BID;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UID"] == null)
        {
            Response.Redirect("~/SignIn.aspx");
        }

        int uid = Convert.ToInt32(Session["UID"]);

        if (Request.QueryString["book_id"] != null)
        {
            BID = Convert.ToInt32(Request.QueryString["book_id"]);

            if (!IsPostBack)
            {
                getBook(BID);
                getReview(BID);
            }
        }
        else
        {
            Response.Redirect("~/Books.aspx");
        }
    }


    public void getReview(int bID)
    {

        BookDAO booktDao = new BookDAO();

        DataTable dataTable = booktDao.getReviews(bID);

        Repeater1.DataSource = dataTable;

        Repeater1.DataBind();

        int num = dataTable.Rows.Count;

        for (int i = 0; i < num; i++){

            getComment(Convert.ToInt32(dataTable.Rows[i][1].ToString()), i);

        }

    }

    public void getComment(int rID,int k)
    {

        BookDAO booktDao = new BookDAO();

        DataTable dataTable = booktDao.getComment(rID);

        var innerRepeater = Repeater1.Items[k].FindControl("Repeater2") as Repeater;

        innerRepeater.DataSource = dataTable;

        innerRepeater.DataBind();

    }


    public void getBook(int bID)
    {
        BookDAO booktDao = new BookDAO();

        DataTable dataTable = booktDao.getBooks(bID);

        rptrbook.DataSource = dataTable;

        rptrbook.DataBind();

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        BookDAO booktDao = new BookDAO();

        String bookid = Request.QueryString["book_id"];

        DataTable dataTable = booktDao.getBookPdf(Convert.ToInt32(bookid));

        String bookname = dataTable.Rows[0][1].ToString() + dataTable.Rows[0][2].ToString();

        System.Diagnostics.Debug.WriteLine(bookname);

        String price = booktDao.getPrice(bookid);
        
        if( price != "not found")
        {
            if( price == "0")
            {
                Response.Redirect("Books/" + bookid + "/" + bookname);
            }
            else
            {
                Response.Redirect("~/transaction.aspx?book_id=" + bookid );
            }
        }

        //Response.Redirect("Books/"+bookid+"/"+bookname);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String rev = txtReview.Text;

        txtReview.Text = "";

        BookDAO booktDao = new BookDAO();

        int uid = Convert.ToInt32(Session["UID"]);
        int bid = Convert.ToInt32(Request.QueryString["book_id"]);

        booktDao.addReview(rev, uid, bid);

        getReview(bid);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        BookDAO booktDao = new BookDAO();

        String bookid = Request.QueryString["book_id"];

        booktDao.deleteBooks(bookid);

        Response.Redirect("~/Books.aspx");


    }

    protected void Button5_Click(object sender, EventArgs e)
    {

        Button btn = (Button)(sender);

        //System.Diagnostics.Debug.WriteLine(btn.CommandArgument);

        int rid = Convert.ToInt32(btn.CommandArgument.ToString());

        int uid = Convert.ToInt32(Session["UID"]);

        int bid = Convert.ToInt32(Request.QueryString["book_id"]);

        BookDAO booktDao = new BookDAO();

        foreach (RepeaterItem item in Repeater1.Items)
        {
            TextBox txtCom = (TextBox)item.FindControl("txtComment");

            if (txtCom != null)
            {
                if (txtCom.Text != "")
                {
                    String cm = txtCom.Text;

                    booktDao.addComment(rid, uid, cm);
                }

            }
            
        }

        getReview(bid);

    }


    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete" && e.CommandArgument.ToString() != "")
        {
            //System.Diagnostics.Debug.WriteLine("here --> " + e.CommandArgument.ToString() );

            BookDAO booktDao = new BookDAO();

            String review_id = e.CommandArgument.ToString();

            booktDao.deleteReviews(review_id);

            getReview(BID);
        }
        if (e.CommandName == "DeleteComment" && e.CommandArgument.ToString() != "")
        {
            System.Diagnostics.Debug.WriteLine("here --> delete koro");

            BookDAO booktDao = new BookDAO();

            String comment_id = e.CommandArgument.ToString();

            booktDao.deleteComment(comment_id);

            getReview(BID);
        }

    }
}