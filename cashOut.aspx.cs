using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cashOut : System.Web.UI.Page
{
    public String vis = "";
    public bool sucess = false, on = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        on = false;
        sucess = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String uid = Request.QueryString["id"];
        UserDao userdao = new UserDao();

        if(bkash.Text != null && cash.Text != null)
        {
            String Cs = userdao.getcash(uid);
            int incash = Convert.ToInt32(Cs);
            int outcash = Convert.ToInt32(cash.Text);

            on = true;
            if( outcash <= incash)
            {
                userdao.addcash(uid, -outcash );
                sucess = true;
                
            }
            
        }
    }
}