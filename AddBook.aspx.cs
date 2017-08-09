using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        BookDAO bookDao = new BookDAO();

        bookDao.addBook(new BookDTO(txtName.Text, txtPrice.Text, txtType.Text, txtAuthorName.Text, txtAuthorId.Text, txtStoryline.Text));



        DataTable dataTable = bookDao.getLastBookID();

        int bid = Convert.ToInt32(dataTable.Rows[0][0].ToString());

        //insert & upload image


        if (fuImg.HasFile)
        {

            String SavePath = Server.MapPath("~/Images/BookImages/") + bid;

            if (!Directory.Exists(SavePath))
            {
                Directory.CreateDirectory(SavePath);
            }

            String Extention = Path.GetExtension(fuImg.PostedFile.FileName);

            String image_name = txtName.Text.ToString().Trim();

            fuImg.SaveAs(SavePath + "\\" + image_name + Extention);

            bookDao.addBookImage(new BookDTO(bid.ToString(), image_name, Extention));


        }


        ////insert & upload books


        if (bookUpload.HasFile)
        {

            String SavePath = Server.MapPath("~/Books/") + bid;

            if (!Directory.Exists(SavePath))
            {
                Directory.CreateDirectory(SavePath);
            }

            String Extention = Path.GetExtension(bookUpload.PostedFile.FileName);

            String book_name = txtName.Text.ToString().Trim();

            bookUpload.SaveAs(SavePath + "\\" + book_name + Extention);

            bookDao.addBookpdf(new BookDTO(bid.ToString(), book_name, Extention));


        }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        UserDao user = new UserDao();

        String name = txtAuthorName.Text;

        String id = user.searchUser(name);
        

        txtAuthorId.Text = id;
     
    }
}