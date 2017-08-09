using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;

/// <summary>
/// Summary description for BookDAO
/// </summary>
public class BookDAO
{

    public MySqlDataReader reader;
    public BookDAO()
    {
        //
        // TODO: Add constructor logic here
        //
    }


    public void addBook(BookDTO book)
    {

        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "INSERT INTO bookland.book ( `book_name`, `author_id`, `author_name`, `price`, `final_price`, `storyline`, `type`)  VALUES ('" + book.NAME + "','" + book.AUTHOR_ID + "','" + book.AUTHOR_NAME + "','" + book.PRICE + "','" + book.FINAL_PRICE + "','" + book.STORYLINE + "','" + book.TYPE + "')";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        String bid = getlastbookid();

        query = "INSERT INTO bookland.authored VALUES ('" + book.AUTHOR_ID + "','" + bid + "')";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }

    public DataTable getComment(int rID)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "SELECT bookland.bookcomment.* ,  bookland.userinfo.username FROM bookland.bookcomment ,bookland.userinfo  WHERE  bookland.bookcomment.uid = bookland.userinfo.uid and bookland.bookcomment.`	review_id` = '" + rID + "' ORDER BY `comment_id` DESC;";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;
    }

    public String getlastbookid()
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "SELECT bookland.book.book_id from bookland.book ORDER BY bookland.book.book_id DESC LIMIT 1";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        String id = dataTable.Rows[0][0].ToString();

        return id;
    }
    public DataTable getBooksbyuser(int uID)
    {

        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "SELECT bookland.book.* FROM  bookland.book, bookland.authored WHERE bookland.book.book_id = bookland.authored.book_id AND bookland.authored.uid = '" + uID + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;

    }

    public void addReview(String rev,int uid,int bid)
    {

        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "INSERT INTO bookland.bookreview (`uid`, `book_id`, `message`) VALUES ('" + uid + "','" + bid + "','" + rev + "')";


        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }

    public void addComment(int rid,int uid, string cm)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "INSERT INTO bookland.bookcomment ( `	review_id`, `uid`, `Comment`) VALUES ('" + rid + "','" + uid + "','" + cm + "')";


        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }

    public DataTable getReviews(int bID)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "SELECT bookland.bookreview.book_id, bookland.bookreview.review_id, bookland.bookreview.message, bookland.userinfo.username FROM bookland.bookreview, bookland.userinfo WHERE bookland.bookreview.uid = bookland.userinfo.uid AND bookland.bookreview.book_id = '" + bID + "' ORDER BY review_id DESC;";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;
    }

    public DataTable getBooks(int bID)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "SELECT bookland.book. * ,  bookland.bookimages.Name AS ImgName , bookland.bookimages.Extention AS Extention  FROM  bookland.book, bookland.bookimages WHERE bookland.book.book_id = bookland.bookimages.book_id AND bookland.book.book_id = '" + bID + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;
    }
    public DataTable getBooks(String bName)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "SELECT bookland.book. * ,  bookland.bookimages.Name AS ImgName , bookland.bookimages.Extention AS Extention  FROM  bookland.book, bookland.bookimages WHERE bookland.book.book_id = bookland.bookimages.book_id AND bookland.book.book_name = '" + bName + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;
    }


    public DataTable getLastBookID()
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "SELECT book_id FROM bookland.book ORDER BY book_id DESC LIMIT 1";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;

    }

    public void addBookImage(BookDTO book)
    {

        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "INSERT INTO bookland.bookimages (`book_id`, `Name`, `Extention`) VALUES ('" + book.BID + "','" + book.IMAGE_NAME + "','" + book.EXTENTION + "')";


        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }

    public void addBookpdf(BookDTO book)
    {

        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "INSERT INTO bookland.bookpdf (`book_id`, `Name`, `Extention`) VALUES ('" + book.BID + "','" + book.IMAGE_NAME + "','" + book.EXTENTION + "')";


        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }

    public DataTable getBookPdf(int bID)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "SELECT bookland.bookpdf.* FROM bookland.bookpdf WHERE bookland.bookpdf.book_id = '" + bID + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;

    }


    public DataTable getBooks()
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "SELECT bookland.book. * ,  bookland.bookimages.Name AS ImgName , bookland.bookimages.Extention AS Extention  FROM  bookland.book, bookland.bookimages WHERE bookland.book.book_id = bookland.bookimages.book_id";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;

    }

    public void deleteBooks(String bookid)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "DELETE FROM bookland.book where book_id ='" + bookid + "'";


        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }

    public void deleteReviews(String reviewId)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "DELETE FROM bookland.bookreview where review_id ='" + reviewId + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }
    public void deleteComment(String commentId)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "DELETE FROM bookland.bookcomment where comment_id ='" + commentId + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }
    public String getPrice( String bID )
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "SELECT bookland.book.price FROM bookland.book WHERE bookland.book.book_id = '" + bID + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        reader = db.sqlCommand.ExecuteReader();

        while (reader.Read())
        {
            return reader.GetString("price");
        }
        return "not found";
    }
    public String getAuthor(String bID)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "SELECT bookland.book.author_id FROM bookland.book WHERE bookland.book.book_id = '" + bID + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        reader = db.sqlCommand.ExecuteReader();

        while (reader.Read())
        {
            return reader.GetString("author_id");
        }
        return "not found";
    }

    public String getBookName(String bID)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "SELECT bookland.book.book_name FROM bookland.book WHERE bookland.book.book_id = '" + bID + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        reader = db.sqlCommand.ExecuteReader();

        while (reader.Read())
        {
            return reader.GetString("book_name");
        }
        return "not found";
    }

    public void updateSellBook(String bID)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "UPDATE bookland.book SET noDownload = noDownload + 1 WHERE book_id = '" + bID + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }
}