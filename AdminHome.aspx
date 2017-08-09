<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container">
        
        
    
                     
        <br />
        <br />
        <h1>All USERS</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Brands</div>

            <asp:Repeater ID="rptruser" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>UserID</th>
                                <th>UserName</th>
                                <th>Email</th>
                                <th>Name</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("uid") %></th>
                        <td><%# Eval("username") %></td>
                        <td><%# Eval("email") %></td>
                        <td><%# Eval("name") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>


        <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="User ID TO DELETE"></asp:Label>
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