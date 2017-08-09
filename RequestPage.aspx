<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="RequestPage.aspx.cs" Inherits="RequestPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="lol">
        <img alt="Logo" src="images/booklandMain.png"  />
        </div>

        <!-- Sign Up -->
        <div class="center-page">

            

            <label class="col-xs-11">Book Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbBook" runat="server" Class="form-control" placeholder="Book Name"></asp:TextBox>
            
               
            </div>       
            
            <label class="col-xs-11 space-vert">Author Name</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbAuthor" runat="server" Class="form-control" placeholder="Author Name"></asp:TextBox>
            
            </div> 

            <label class="col-xs-11 space-vert">Book Type</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbType" runat="server" Class="form-control" placeholder="Book Type"></asp:TextBox>
            
            </div> 
             <label class="col-xs-11 space-vert">Book Edition</label>
            <div class="col-xs-11">
            <asp:TextBox ID="rbEdition" runat="server" Class="form-control" placeholder="Book Edition"></asp:TextBox>
            
            </div> 

            
             <div class="col-xs-11 space-vert">
                 <asp:Button ID="btnRequest" runat="server" Text="Request" class="btn btn-success" OnClientClick="btnRequest" OnClick="btnRequest_Click" />
                <asp:Label ID="show" runat="server" Text=""></asp:Label>
            </div>
            

        </div>
</asp:Content>

