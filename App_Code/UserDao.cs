using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;

/// <summary>
/// Summary description for userDao
/// </summary>
public class UserDao
{

    public MySqlDataReader reader;
    public UserDao()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void createUser(UserDTO userDto)
    {

        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "INSERT INTO bookland.userinfo ( `username`, `password`, `email`, `name`, `usertype`) VALUES ('" + userDto.USERNAME + "','"
                                                                + userDto.PASSWORD + "','"
                                                                + userDto.EMAIL + "','"
                                                                + userDto.NAME + "', 'U')";


        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }

    public void deleteUser(string text)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "DELETE FROM bookland.userinfo WHERE `uid` = '" + text + "'";


        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }

    public DataTable getUser(String name, String pass)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "select * from bookland.userinfo where `username` = '" + name + "' and  `password` = '" + pass + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;

    }

    public DataTable getUserAll()
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "select * from bookland.userinfo";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;

    }
    public DataTable getUser(String id)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "select * from bookland.userinfo where `uid` = '" + id + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;

    }

    public DataTable getUserByName(String name)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "select * from bookland.userinfo where `name` = '" + name + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlAdapter = new MySqlDataAdapter();

        db.sqlAdapter.SelectCommand = db.sqlCommand;

        DataTable dataTable = new DataTable();

        db.sqlAdapter.Fill(dataTable);

        db.sqlConnection.Close();

        return dataTable;

    }
    public String searchUser(String name)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "select * from bookland.userinfo where `name` = '" + name + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        reader = db.sqlCommand.ExecuteReader();

        while (reader.Read())
        {
            return reader.GetString("uid");
        }

        return "Not Found";

    }

    public void addcash(String id, int cash)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "UPDATE bookland.userinfo SET cash = cash + " +  cash + " WHERE uid = '" + id + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        db.sqlCommand.ExecuteNonQuery();

        db.sqlConnection.Close();
    }

    public String getcash( String id)
    {
        DbConnect db = new DbConnect();

        db.sqlConnection.Open();

        String query = "select * from bookland.userinfo where `uid` = '" + id + "'";

        System.Diagnostics.Debug.WriteLine(query);

        db.sqlCommand = new MySqlCommand(query, db.sqlConnection);

        reader = db.sqlCommand.ExecuteReader();

        while (reader.Read())
        {
            return reader.GetString("cash");
        }

        return "0";
    }

}