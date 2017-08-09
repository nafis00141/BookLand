<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddBook.aspx.cs" Inherits="AddBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <br />
        <br />
        <div class="form-horizontal">
            <h2>Add Books</h2>
            <hr />

             <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                   
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                   
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Type"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtType" CssClass="form-control" runat="server"></asp:TextBox>
                    
                </div>
            </div>

             

            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Storyline"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtStoryline" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    
                </div>
            </div>



              <div class="form-group">
                <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg" CssClass="form-control" runat="server" />
                   
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Book Upload"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="bookUpload" CssClass="form-control" runat="server" />
                    
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label20" runat="server" CssClass="col-md-2 control-label" Text="Author Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtAuthorName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" Text="Search" CssClass="btn btn-default" OnClick="Button3_Click"  />
                    
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Author Id"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtAuthorId" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

             <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-default" OnClick="Button1_Click" />
                </div>
            </div>

       </div>
    </div>

</asp:Content>

