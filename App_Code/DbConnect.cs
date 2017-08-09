using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for DbConnect
/// </summary>
public class DbConnect
{

    public String connectionString = "datasource=localhost;port=3306;username=root;password=";

    public MySqlConnection sqlConnection;

    public MySqlCommand sqlCommand;

    public MySqlDataAdapter sqlAdapter;

    public DbConnect()
    {
        sqlConnection = new MySqlConnection(connectionString);
    }
}