<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">

    <asp:DropDownList ID="Ordine" runat="server" OnSelectedIndexChanged="Dropwdown1_Click">
        <asp:ListItem Enabled="true" Text="Crescator" Value="1"></asp:ListItem>
        <asp:ListItem Text="Descrescator" Value="2"></asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="Categorie" runat="server" OnSelectedIndexChanged="Dropwdown1_Click">
        <asp:ListItem Enabled="true" Text="Data" Value="1"></asp:ListItem>
        <asp:ListItem Text="Rating" Value="2"></asp:ListItem>
    </asp:DropDownList>
    
    <asp:Button ID="Button1" runat="server" Text="Date descrescator" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Date crescator" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Rating crescator" OnClick="Button3_Click" />
    <asp:Button ID="Button4" runat="server" Text="Rating descrescator" OnClick="Button4_Click" />        


    <asp:LoginView ID="LoginView1" runat="server">
        





        <AnonymousTemplate>
            

            
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">

                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="titlu" HeaderText="titlu" SortExpression="titlu" />
                    <asp:BoundField DataField="link" HeaderText="link" SortExpression="link" />
                    <asp:BoundField DataField="descriere" HeaderText="descriere" SortExpression="descriere" />
                    <asp:BoundField DataField="popularitate" HeaderText="popularite" SortExpression="popularitate" />
                    <asp:BoundField DataField="url_imagine" HeaderText="url_imagine" SortExpression="url_imagine" />
                    <asp:BoundField DataField="cuvinte_cheie" HeaderText="cuvinte_cheie" SortExpression="cuvinte_cheie" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
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
                    <asp:BoundField DataField="link" HeaderText="link" SortExpression="link" />
                    <asp:BoundField DataField="descriere" HeaderText="descriere" SortExpression="descriere" />
                    <asp:BoundField DataField="popularitate" HeaderText="popularite" SortExpression="popularitate" />
                    <asp:BoundField DataField="url_imagine" HeaderText="url_imagine" SortExpression="url_imagine" />
                    <asp:BoundField DataField="cuvinte_cheie" HeaderText="cuvinte_cheie" SortExpression="cuvinte_cheie" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
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
                    <asp:BoundField DataField="link" HeaderText="link" SortExpression="link" />
                    <asp:BoundField DataField="descriere" HeaderText="descriere" SortExpression="descriere" />
                    <asp:BoundField DataField="popularitate" HeaderText="popularite" SortExpression="popularitate" />
                    <asp:BoundField DataField="url_imagine" HeaderText="url_imagine" SortExpression="url_imagine" />
                    <asp:BoundField DataField="cuvinte_cheie" HeaderText="cuvinte_cheie" SortExpression="cuvinte_cheie" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/DeleteBookmark.aspx?id={0}" HeaderText="Delete Bookmark" Text="Delete" />
                </Columns>

                </asp:GridView>
                </ContentTemplate>
            </asp:RoleGroup>
        </RoleGroups>





    </asp:LoginView>




<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [bookmark]" DeleteCommand="DELETE FROM [bookmark] WHERE [Id]=@Id"></asp:SqlDataSource>


</asp:Content>