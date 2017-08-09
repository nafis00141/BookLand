<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="BookProcess.aspx.cs" Inherits="BookProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-top:80px">
        
       

        <asp:Repeater ID="rptrbook" runat="server">
            <ItemTemplate>
                
                <div class="col-md-3" style="margin-left:360px">
                    <div  class="thumbnail" style="max-width:"480">
                        <img src="Images/BookImages/<%#Eval("book_id") %>/<%#Eval("ImgName") %><%#Eval("Extention") %>" alt="<%#Eval("ImgName") %>" alt="01" onerror="this.src='images/NoPicAvailable.png'">
                    </div>
                </div>

                <div >
                    <h1 class="proNameView"><%#Eval("book_name") %></h1>
                    <p class="proPriceView">Price: <%#Eval("final_price") %></p>
                </div>


                <div >
                    <h3 class="proNameView">Genre</h3>
                    <p class="proPriceView"><%#Eval("type") %></p>  
            
                </div>

                <div >
                    <p class="proNameView" >Author</p>
                    <p class="proPriceView"><%#Eval("author_name") %></p>  
            
                </div>


                <div >
                    <h3 class="proNameView">Storyline</h3>

                    <p><%#Eval("storyline") %></p>
                </div>

                
           </ItemTemplate>
        </asp:Repeater>

        <div  style="margin-right:12%">
            <asp:Button ID="Button1" CssClass="mainButton" runat="server" Text="Download" OnClick="Button1_Click"/>
            <%
                if( Session["USERNAME"].ToString() == "admin")
                {
                    %>
                        <asp:Button ID="Button3" CssClass="mainButton" runat="server" Text="Remove" OnClick="Button3_Click" />
                    <%
                }
            %>

        </div>

        <!-- Review Start -->
        
        <div style="margin-right:12%" >
             <h3 class="proNameView">Review</h3>
             <asp:TextBox ID="txtReview" runat="server" TextMode="MultiLine"  Width="560px" Height="60px"></asp:TextBox>
        </div>

        <div  style=" margin-left:44% " >
            <asp:Button ID="Button2" CssClass="mainButton" runat="server" Text="Post" OnClick="Button2_Click" />
        </div>

        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <div style="margin-left:50%; height:250px; width:550px; background-color:#f1e5c5 ;border-right:1px solid #f2eb9b; border-left:1px solid #f2eb9b; border-top:1px solid #f2eb9b" >
                    <h3 style="padding:5px 5px 5px 5px;"><%#Eval("username") %></h3>
                    <div style="background-color:#f6e1e1;">
                    <p style="padding:5px 5px 5px 5px; color:#4b3e3e"><%#Eval("message") %></p>
                    </div>
                    
                    <div style="padding:5px 5px 5px 5px;">
                        <%
                        if( Session["USERNAME"].ToString() == "admin")
                        {
                            %>
                            <asp:Button ID="Button3" lass="btn btn-outline-danger" runat="server" Text="Remove" OnClick="Button3_Click" />
                            <%
                        }
                        else
                        {
                             %>
                       
                            <asp:LinkButton ID="LinkButton1" CommandName="Delete" OnClientClick="javascript:if(!confirm('Delete this information? this will delete permanently'))return false;" CommandArgument='<%#Eval("review_id") %>' runat="server">Remove</asp:LinkButton>
                       
                            <%

                        }
                        %>
                    </div>

                 

                    <h3 style="padding:5px 5px 5px 5px;">Comments:</h3>
                    <div style="padding-left:30px;">
                    <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine"  Width="200px" Height="25px" ></asp:TextBox>
                    </div>
                    <div style="padding-left:30px;">
                    <asp:Button ID="Button5" CommandArgument='<%#Eval("review_id")%>' runat="server" Text="Post comment" class="btn btn-primary" OnClick="Button5_Click" />
                    </div>
                    <div class="modal-body" style="padding:5px 5px 5px 5px;">

                        
                                  
                          <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater1_ItemCommand" > 
                                <ItemTemplate>
                                    <div style="background-color:#f6e1e1; padding:5px 5px 5px 5px;">
                                    <h5><%#Eval("username") %>: <%#Eval("Comment") %></h5>
                                  
                                    <%
                                        if( Session["USERNAME"].ToString() == "admin")
                                        {
                                            %>
                                                <asp:Button ID="Button3" class="btn btn-outline-danger" runat="server" Text="Remove" OnClick="Button3_Click" />
                                            <%
                                         }
                                         else
                                         {
                                            %>
                                                <asp:LinkButton ID="LinkButton3" Visible='<% # Session["UID"].ToString() == Eval("uid").ToString() %>' CommandName="DeleteComment" OnClientClick="javascript:if(!confirm('Delete this information? this will delete permanently'))return false;" CommandArgument='<%#Eval("comment_id") %>' runat="server">Remove</asp:LinkButton>

                                            <%

                                         }
                                    %>


                                      </div>  
                                   

                                     
                                    </ItemTemplate>
                                
                                     
                                    
                          </asp:Repeater> 


                     </div>


                </div>
                <div style="margin-left:44%">
                    <a style="text-decoration:none;" href="BookProcess.aspx?book_id=<%#Eval("book_id") %>">
                </div>

            </ItemTemplate>
        </asp:Repeater>
        
    </div>

    
</asp:Content>

