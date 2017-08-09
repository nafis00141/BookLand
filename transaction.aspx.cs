using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class transaction : System.Web.UI.Page
{
    public String price = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        String bookid = Request.QueryString["book_id"];
        ShowPrice();
    }

    void ShowPrice()
    {
        String bookid = Request.QueryString["book_id"];
        
        BookDAO booktDao = new BookDAO();

        price = booktDao.getPrice(bookid);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        BookDAO booktDao = new BookDAO();
        String tId = transactionId.Text;
        String bookid = Request.QueryString["book_id"];
        if ( tId != "")
        {
            String authorID = booktDao.getAuthor( bookid );
            String adminID = Session["ADMINID"].ToString();
            String bookname = booktDao.getBookName(bookid);

            int P = 0;
            P = Convert.ToInt32(price);
            int us = P - (P * 10 / 100);
            int ad = P - us;

            addCash(authorID, us );
            addCash(adminID, ad );
            booktDao.updateSellBook(bookid);

            Response.Redirect("Books/" + bookid + "/" + bookname + ".pdf");
        }
    }

    void addCash(String id, int price)
    {
        UserDao userdao = new UserDao();
        userdao.addcash( id, price );
    }
}