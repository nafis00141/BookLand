<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Books" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label style="padding-top:70px; margin-left:330px;" ID="Label10" runat="server" CssClass="col-md-2 control-label" Text=""></asp:Label>
        <div  class="col-md-3"  style="padding-top:70px; margin-left:400px;" >
             <asp:TextBox ID="UserID" Class="form-control" runat="server"  AutoPostBack="True" placeholder="Search by Book Name"></asp:TextBox>
            
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserID" CssClass="text-danger" runat="server" ErrorMessage="The UserID field is Required !" ControlToValidate="UserID"></asp:RequiredFieldValidator>
        </div>
       <div class="form-group" style="padding-top:70px; margin-left:330px;">
              <div style="margin-left:360px;" class="col-md-2"></div>
                  <div  class="col-md-6">
                  <asp:Button style="margin-left:360px;" ID="Button10" runat="server" Text="Search" CssClass="btn btn-success" OnClick="Button10_Click"   />          
               </div>
        </div>
       
    <hr/>
  <div class="row" style="padding-top:100px; padding-left:250px; padding-right:250px;">
   <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
                <div class="col-sm-3 ">
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

</asp:Content>

