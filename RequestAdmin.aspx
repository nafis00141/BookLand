<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="RequestAdmin.aspx.cs" Inherits="RequestAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        
        
    
                     
        <br />
        <br />
        <h1>ALL REQUESTS</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All requests</div>

            <asp:Repeater ID="rptruser" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>RequestID</th>
                                <th>UserID</th>
                                <th>BookName</th>
                                <th>AuthorName</th>
                                <th>BookType</th>
                                <th>BookEdition</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("request_id") %></th>
                        <th><%# Eval("uid") %></th>
                        <td><%# Eval("book_name") %></td>
                        <td><%# Eval("author_name") %></td>
                        <td><%# Eval("book_type") %></td>
                        <td><%# Eval("book_edition") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>


        <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Request ID TO DELETE"></asp:Label>
         <div class="col-md-3">
             <asp:TextBox ID="UserID" Class="form-control" runat="server"  AutoPostBack="True"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserID" CssClass="text-danger" runat="server" ErrorMessage="The UserID field is Required !" ControlToValidate="UserID"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
              <div class="col-md-2"></div>
                  <div class="col-md-6">
                  <asp:Button ID="Button1" runat="server" Text="DELETE" CssClass="btn btn-default" OnClick="Button1_Click"  />          
               </div>
        </div>


    </div>
</asp:Content>

