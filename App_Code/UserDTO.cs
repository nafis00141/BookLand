using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserDTO
/// </summary>
public class UserDTO
{

    private String username, password, email, name;
    public UserDTO(String username, String password, String name, String email)
    {
        this.username = username;
        this.password = password;
        this.name = name;
        this.email = email;
    }

    public String USERNAME
    {
        get { return username; }

        set { username = value; }
    }


    public String PASSWORD
    {
        get { return password; }

        set { password = value; }
    }

    public String NAME
    {
        get { return name; }

        set { name = value; }
    }

    public String EMAIL
    {
        get { return email; }

        set { email = value; }
    }

}