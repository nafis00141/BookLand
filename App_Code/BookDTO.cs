using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookDTO
/// </summary>
public class BookDTO
{

    private String name, price, type, author_name, author_id,storyline,final_price;

    private String bid, image_name, extention;

    public BookDTO()
    {
        //
        // TODO: Add constructor logic here
        //
    }



    public BookDTO(String name, String price, String type, String author_name, String author_id, String storyline)
    {
        this.name = name;
        this.price = price;
        this.type = type;
        this.author_name = author_name;
        this.storyline = storyline;
        this.author_id = author_id;

        double p = double.Parse(price, CultureInfo.InvariantCulture);
        p = p + (p / 10);

        Math.Round(p, 0);

        int k = Convert.ToInt32(p);

        this.final_price = k.ToString(); 
    }

    public BookDTO(String bid, String image_name, String extention)
    {
        this.bid = bid;
        this.image_name = image_name;
        this.extention = extention;
    }

    public String BID
    {
        get { return bid; }

        set { bid = value; }
    }


    public String IMAGE_NAME
    {
        get { return image_name; }

        set { image_name = value; }
    }


    public String EXTENTION
    {
        get { return extention; }

        set { extention = value; }
    }


    public String NAME
    {
        get { return name; }

        set { name = value; }
    }

    public String PRICE
    {
        get { return price; }

        set { price = value; }
    }

    public String TYPE
    {
        get { return type; }

        set { type = value; }
    }

    public String AUTHOR_NAME
    {
        get { return author_name; }

        set { author_name = value; }
    }

    public String AUTHOR_ID
    {
        get { return author_id; }

        set { author_id = value; }
    }

    public String STORYLINE
    {
        get { return storyline; }

        set { storyline = value; }
    }

    public String FINAL_PRICE
    {
        get { return final_price; }

        set { final_price = value; }
    }

}