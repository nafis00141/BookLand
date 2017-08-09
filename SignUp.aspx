<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <meta charset="utf-8" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Sign Up</title>



    <!-- Bootstrap -->

    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <link href="css/Custom-Cs.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->

    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>

      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>

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

                        <a class="navbar-brand" href="Default.aspx"><span>

                            <img alt="Logo" src="images/bookland2.jpg" height="30" /></span>BookLand</a>

                    </div>

                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">

                           
                            <li><a href="Books.aspx">Books</a></li>
                            <li><a href="AboutPage.aspx">About</a></li>

                          


                            <li class="active"><a href="SignUp.aspx">Sign Up</a></li>

                            <li><a href="SignIn.aspx">Sign In</a></li>

                        </ul>

                    </div>

                </div>

            </div>

        </div>
         

        <div class="lol">
        <img alt="Logo" src="images/booklandMain.png"  />
        </div>

        <!-- Sign Up -->
        <div class="center-page">

            

            <label class="col-xs-11">Username</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbUname" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
            </div>       
            
            <label class="col-xs-11 space-vert">Password</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Password"></asp:TextBox>
            </div> 

            <label class="col-xs-11 space-vert">Confirm Password</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password"></asp:TextBox>
            </div> 

            <label class="col-xs-11 space-vert">Name</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
            </div> 

            <label class="col-xs-11 space-vert">Email</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email"></asp:TextBox>
            </div>

            <div class="col-xs-11 space-vert">
                <asp:Button ID="btSignup" runat="server" class="btn btn-success" Text="Sign Up" OnClick="btSignup_Click" />
                <asp:Label ID="show" runat="server" Text=""></asp:Label>
            </div>

        </div>


        

        <!-- Sign Up -->



        <!-- Footer Carousel-->
        <hr />

           
        <!-- Footer Carousel-->





    </form>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->

    <script src="js/bootstrap.min.js"></script>

</body>

</html>