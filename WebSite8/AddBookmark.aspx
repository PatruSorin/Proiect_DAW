<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddBookmark.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="BrandLabel" runat="server" Text="Brand"></asp:Label>
    <br />
    


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:DefaultConnection%>" SelectCommand="Select [Id],[BrandName] From [Brand]"></asp:SqlDataSource>




    <br />
    <br />
    <asp:Label ID="TitlulLabel" runat="server" Text="Titlu"></asp:Label>
    <br />
    <asp:TextBox ID="Titlu" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="LinkLabel" runat="server" Text="Link"></asp:Label>
    <br />
    <asp:TextBox ID="Link" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="DescriereLabel" runat="server" Text="Descriere"></asp:Label>
    <br />
    <asp:TextBox ID="Descriere" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="UrlImagineLabel" runat="server" Text="UrlImagine"></asp:Label>
    <br />
    <asp:TextBox ID="UrlImagine" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="CuvinteCheieLabel" runat="server" Text="CuvinteCheie"></asp:Label>
    <br />
    <asp:TextBox ID="CuvinteCheie" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="AddButton" runat="server" Text="Add" OnClick="AddButtonClick" />
</asp:Content>

