using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for requestDTO
/// </summary>
public class requestDTO
{
    private String bookName, authorName, bookType, bookEdition, userId;
    public requestDTO()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public requestDTO(String bookName, String authorName, String bookType, String bookEdition, String userId)
    {
        this.bookName = bookName;
        this.authorName = authorName;
        this.bookType = bookType;
        this.bookEdition = bookEdition;
        this.userId = userId;
        
    }
    public String BOOKNAME
    {
        get { return bookName; }

        set { bookName = value; }
    }
    public String AUTHORNAME
    {
        get { return authorName; }

        set { authorName = value; }
    }
    public String BOOKTYPE
    {
        get { return bookType; }

        set { bookType = value; }
    }
    public String BOOKEDITION
    {
        get { return bookEdition; }

        set { bookEdition = value; }
    }
    public String USERID
    {
        get { return userId; }

        set { userId = value; }
    }
}