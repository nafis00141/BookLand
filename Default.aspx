<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Buy Online Books</title>

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

    <div class="background"  >
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">

            <div class="container">

               <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   <a class="navbar-brand" href="Default.aspx"><span><img alt="Logo" src="images/bookland2.jpg" height="36"/></span> BookLand</a>
               </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Default.aspx">Home</a></li>
                        <li><a href="AboutPage.aspx">About</a></li>
                        <li><a href="Books.aspx">Books</a></li>
                        <li><a href="RequestPage.aspx">Request Book</a></li>
                       
                         <li><a href="SignUp.aspx">Sign Up</a></li>
                          <li><a href="SignIn.aspx">Sign In</a></li>
                    </ul>
                </div>
            </div>
        </div>
        
        
        <asp:Label style="padding-top:100px; margin-left:330px;" ID="Label10" runat="server" CssClass="col-md-2 control-label" Text=""></asp:Label>
        <div  class="col-md-3"  style="padding-top:70px; margin-left:400px;" >
             <asp:TextBox ID="UserID" Class="form-control" runat="server"  AutoPostBack="True" placeholder="Search by Book Name" ></asp:TextBox>
            
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserID" CssClass="text-danger" runat="server" ErrorMessage="The UserID field is Required !" ControlToValidate="UserID"></asp:RequiredFieldValidator>
        </div>
       <div class="form-group" style="padding-top:70px; margin-left:330px;">
              <div style="margin-left:360px;" class="col-md-2"></div>
                  <div  class="col-md-6">
                  <asp:Button style="margin-left:360px;" ID="Button10" runat="server" Text="Search" CssClass="btn btn-success" OnClick="Button10_Click"   />          
               </div>
        </div>
     
        
        <!--carousel 
                    

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="images/i1.jpg" alt="...">
                        <div class="carousel-caption">
                           
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/i2.jpg" alt="...">
                        <div class="carousel-caption">
                            
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/i3.jpg" alt="...">
                        <div class="carousel-caption">
                            
                        </div>
                    </div>
                </div>
                
               
     
    </div>
        <br />
        <br />
        <!-- Middle Carousel-->
        
          <div class="row" style="padding-top:100px; padding-right:250px; padding-left:250px; ">
           <asp:Repeater ID="rptrProducts" runat="server">
                    <ItemTemplate>
                        <div class="col-sm-3 col-md-3">
                            <a style="text-decoration:none;" href="BookProcess.aspx?book_id=<%#Eval("book_id") %>">
                            <div class="thumbnail">
                                <img src="Images/BookImages/<%#Eval("book_id") %>/<%#Eval("ImgName") %><%#Eval("Extention") %>" alt="<%#Eval("ImgName") %>" width="250" height="250"/>
                                <div class="caption">
                                    <div class="probrand"><%#Eval("type") %></div>
                                    <div class="proName"><%#Eval("book_name") %></div>
                                    <div class="proPrice">Price : <%#Eval("final_price") %></div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </ItemTemplate>
               </asp:Repeater>
          </div>
        
        

        <!-- Middle Carousel-->
        <!-- Footer Carousel-->
        <br />
        <br />

            
        <!-- Footer Carousel-->
    </div>
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
