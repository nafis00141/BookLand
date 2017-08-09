<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="col-md-3"  style="padding-top:100px; margin-left:200px;" >
             <asp:TextBox ID="UserID" Class="form-control" runat="server"  AutoPostBack="True" placeholder="Search by User Name"></asp:TextBox>
            
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserID" CssClass="text-danger" runat="server" ErrorMessage="The UserID field is Required !" ControlToValidate="UserID"></asp:RequiredFieldValidator>
        </div>
       <div class="form-group" style="padding-top:100px; margin-left:360px;">
              <div style="margin-left:360px;" class="col-md-2"></div>
                  <div  class="col-md-6">
                  <asp:Button  ID="Button10" runat="server" Text="Search" CssClass="btn btn-default" OnClick="Button10_Click"    />          
               </div>
        </div>
  <div class="row" style="padding-top:100px; margin-left:200px;">
   <asp:Repeater ID="rptruser" runat="server">
            <ItemTemplate>
                <div class="col-sm-5 col-md-5">
                    <a style="text-decoration:none;" href="UserPage.aspx?uid=<%#Eval("uid") %>">
                    <div class="thumbnail">
                        <img src="Images/user.png" width="200" height="200"/>
                        <div class="caption">
                            <div class="probrand"><%#Eval("NAME") %></div>
                        </div>
                    </div>
                    </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
  </div>

</asp:Content>