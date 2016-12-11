<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Comentarii.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <asp:LoginView ID="LoginView1" runat="server">


       <AnonymousTemplate>
            

            
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="551px">

                <Columns>
                    <asp:BoundField DataField="utilizator" HeaderText="utilizator" SortExpression="utilizator" />
                    <asp:BoundField DataField="continut" HeaderText="continut" SortExpression="continut" />
                                        
                </Columns>

            </asp:GridView>


            


        </AnonymousTemplate>




       <RoleGroups>
           <asp:RoleGroup Roles="User">
           <ContentTemplate>

               <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="551px">

                <Columns>
                    <asp:BoundField DataField="utilizator" HeaderText="utilizator" SortExpression="utilizator" />
                    <asp:BoundField DataField="continut" HeaderText="continut" SortExpression="continut" />
                                        
                </Columns>

            </asp:GridView>


              
                
               <div>
                <asp:TextBox ID="t1"  runat="server"></asp:TextBox>
                <asp:Button ID="submit1"  runat="server" Text="Submit" OnClick="submit1_Click" />
                </div>



           </ContentTemplate>                      
       </asp:RoleGroup>
          



       <asp:RoleGroup Roles="Admin">
           <ContentTemplate>

               <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="551px">

                <Columns>
                    <asp:BoundField DataField="utilizator" HeaderText="utilizator" SortExpression="utilizator" />
                    <asp:BoundField DataField="continut" HeaderText="continut" SortExpression="continut" />
                   <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/DeleteCom.aspx?id={0}" HeaderText="Delete Comentariu" Text="Delete" />                      
                </Columns>

            </asp:GridView>
           
           
           
           
           <div>
                <asp:TextBox ID="t2"  runat="server"></asp:TextBox>
                <asp:Button ID="submit2"  runat="server" Text="Submit" OnClick="submit2_Click" />
            </div>
           
           
           
           </ContentTemplate>
       </asp:RoleGroup>


       </RoleGroups>
       
           





   </asp:LoginView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [comentarii]" DeleteCommand="DELETE FROM [comentarii] WHERE [Id]=@Id"></asp:SqlDataSource>

</asp:Content>

