<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">


    
    <asp:Button ID="Button1" runat="server" Text="Date descrescator" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Date crescator" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Rating crescator" OnClick="Button3_Click" />
    <asp:Button ID="Button4" runat="server" Text="Rating descrescator" OnClick="Button4_Click" />        


    <asp:LoginView ID="LoginView1" runat="server">
        





        <AnonymousTemplate>
            

            
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="551px">

                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="titlu" HeaderText="titlu" SortExpression="titlu" />
                    <asp:HyperLinkField  DataNavigateUrlFields="link" HeaderText="link" Text="link" />
                    <asp:BoundField DataField="descriere" HeaderText="descriere" SortExpression="descriere" />
                    <asp:BoundField DataField="popularitate" HeaderText="popularite" SortExpression="popularitate" />
                    <asp:ImageField ControlStyle-Height="50px" ControlStyle-Width="50px" DataImageUrlField="url_imagine" HeaderText="url_imagine" SortExpression="url_imagine"></asp:ImageField>
                    <asp:BoundField DataField="cuvinte_cheie" HeaderText="cuvinte_cheie" SortExpression="cuvinte_cheie" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/Comentarii.aspx?id={0}" HeaderText="Comentarii" Text="Comentarii" />
                    
                </Columns>

            </asp:GridView>
        </AnonymousTemplate>
        <RoleGroups>
            
            
            
            <asp:RoleGroup Roles="User">
                <ContentTemplate>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">

                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="titlu" HeaderText="titlu" SortExpression="titlu" />
                    <asp:HyperLinkField  DataNavigateUrlFields="link" HeaderText="link" Text="link" />
                    <asp:BoundField DataField="descriere" HeaderText="descriere" SortExpression="descriere" />
                    <asp:BoundField DataField="popularitate" HeaderText="popularite" SortExpression="popularitate" />
                    <asp:ImageField ControlStyle-Height="50px" ControlStyle-Width="50px" DataImageUrlField="url_imagine" HeaderText="url_imagine" SortExpression="url_imagine"></asp:ImageField>
                    <asp:BoundField DataField="cuvinte_cheie" HeaderText="cuvinte_cheie" SortExpression="cuvinte_cheie" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/Comentarii.aspx?id={0}" HeaderText="Comentarii" Text="Comentarii" />
                    <asp:HyperLinkField  Text='<img src="http://i.imgur.com/nFn8U6a.png" border="0" height="20px" />'  DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/UpvoteBookmark.aspx?id={0}"/>
                    <asp:HyperLinkField  Text='<img src="http://orig05.deviantart.net/cd48/f/2011/342/e/4/descentia_cutie_mark_vector_by_gandodepth-d4iji5f.png" border="0" height="20px" />'  DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/DownvoteBookmark.aspx?id={0}"/>
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/StarBookmark.aspx?id={0}" HeaderText="Favorite" Text="Star" />
                </Columns>

                </asp:GridView>
                </ContentTemplate>
            </asp:RoleGroup>

            <asp:RoleGroup Roles="Admin">
                <ContentTemplate>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">

                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="titlu" HeaderText="titlu" SortExpression="titlu" />
                    <asp:HyperLinkField  DataNavigateUrlFields="link" HeaderText="link" Text="link" />
                    <asp:BoundField DataField="descriere" HeaderText="descriere" SortExpression="descriere" />
                    <asp:BoundField DataField="popularitate" HeaderText="popularite" SortExpression="popularitate" />
                    <asp:ImageField ControlStyle-Height="50px" ControlStyle-Width="50px" DataImageUrlField="url_imagine" HeaderText="url_imagine" SortExpression="url_imagine"></asp:ImageField>
                    <asp:BoundField DataField="cuvinte_cheie" HeaderText="cuvinte_cheie" SortExpression="cuvinte_cheie" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/DeleteBookmark.aspx?id={0}" HeaderText="Delete Bookmark" Text="Delete" />
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/Comentarii.aspx?id={0}" HeaderText="Comentarii" Text="Comentarii" />
                    <asp:HyperLinkField  Text='<img src="http://i.imgur.com/nFn8U6a.png" border="0" height="20px" />'  DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/UpvoteBookmark.aspx?id={0}"/>
                    <asp:HyperLinkField  Text='<img src="http://orig05.deviantart.net/cd48/f/2011/342/e/4/descentia_cutie_mark_vector_by_gandodepth-d4iji5f.png" border="0" height="20px" />'  DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/DownvoteBookmark.aspx?id={0}"/>
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/StarBookmark.aspx?id={0}" HeaderText="Favorite" Text="Star" />
                </Columns>

                </asp:GridView>
                </ContentTemplate>
            </asp:RoleGroup>
        </RoleGroups>





    </asp:LoginView>




<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [bookmark]" DeleteCommand="DELETE FROM [bookmark] WHERE [Id]=@Id"></asp:SqlDataSource>


</asp:Content>