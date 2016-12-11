<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyHome.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [bookmark]" DeleteCommand="DELETE FROM [bookmark] WHERE [Id]=@Id"></asp:SqlDataSource>
</asp:Content>

