using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;

/// <summary>
/// Summary description for requestDAO
/// </summary>
public class requestDAO
{
   
    public requestDAO()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void addRequest( requestDTO request )
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "INSERT INTO bookland.request_info ( `uid`, `book_name`, `author_name`, `book_type`, `book_edition`)  VALUES ('" + request.USERID + "','" + request.BOOKNAME + "','" + request.AUTHORNAME + "','" + request.BOOKTYPE + "','" + request.BOOKEDITION + "')";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }


    public DataTable getRequest()
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "select * from bookland.request_info";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;

    }

    public void deleteRequest(string text)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "DELETE FROM bookland.request_info WHERE `request_id` = '" + text + "'";


        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }
}