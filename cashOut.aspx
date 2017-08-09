<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cashOut.aspx.cs" Inherits="cashOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>BookLand</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link href="css/Custom-Cs.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="navbar navbar-default navbar-fixed-top" role="navigation">

                <div class="container">

                    <div class="navbar-header">

                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">

                            <span class="sr-only">Toggle navigation</span>

                            <span class="icon-bar"></span>

                            <span class="icon-bar"></span>

                            <span class="icon-bar"></span>

                        </button>

                        <a class="navbar-brand" href="#"><span>

                            <img alt="Logo" src="images/bookland2.jpg" height="30" /></span>BookLand</a>

                    </div>

                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">

                           

                            <li><a href="AboutPage.aspx">About</a></li>

                            <li><a href="RequestPage.aspx">Request</a></li>
                             <li><a href="RequestAdmin.aspx">Requested Books</a></li>
                            <li><a href="Books.aspx">Books</a></li>
                            <li><a href="Users.aspx">Users</a></li>
                            <li><a href="AdminHome.aspx">Admin</a></li>
                           

                                

                               

                                <li><a href="AddBook.aspx">Add Books</a></li>
                               


                              

                          

                           <li><a href="Default.aspx">Log Out</a></li>

                        </ul>

                    </div>

                </div>

            </div>

        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <div class="container">


    <div class="form-group">

            
           <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="BKASH NO"></asp:Label>
           <div class="col-md-3">
              <asp:TextBox ID="bkash" Class="form-control" runat="server"  AutoPostBack="True"></asp:TextBox>
           </div>
        </div>
        <br />
        <br />
        <br />

        <div class="form-group">

            
           <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="CASH"></asp:Label>
           <div class="col-md-3">
              <asp:TextBox ID="cash" Class="form-control" runat="server"  AutoPostBack="True"></asp:TextBox>
           </div>
        </div>
        <br />
        <br />
        <br />
        <div class="form-group">
             <div class="col-md-2"></div>
             <div class="col-md-6">
                  <asp:Button ID="Button1" runat="server" Text="CASHOUT" CssClass="btn btn-info" OnClick="Button1_Click"/>
                  
             </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <% if (on)
            {
                if( sucess)
                {
                    %>
                    <asp:Label ID="Label3" runat="server" Text="Successful" Visible ="true" ></asp:Label>
                    <%
                }
                else
                {
                    %>
                    <asp:Label ID="Label4" runat="server" Text="Unsuccessful" Visible ="true" ></asp:Label>
                    <%
                }
            }

        %>
        

    </div>
    </form>
</body>
</html>
