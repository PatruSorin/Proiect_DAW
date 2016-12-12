<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StarBookmark.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h1>Alege categoria in care vrei sa fie salvat bookmarkul</h1>
   
        <asp:DropDownList ID="Categorie" runat="server" AutoPostBack="True"  OnSelectedIndexChanged="Categorie_SelectedIndexChanged" >
        <asp:ListItem Selected="true" Text="---" Value="hobby"></asp:ListItem>
        <asp:ListItem Text="Food" Value="food"></asp:ListItem>
        <asp:ListItem Text="Arta" Value="arta"></asp:ListItem>
        <asp:ListItem Text="Hobby" Value="hobby"></asp:ListItem>
    </asp:DropDownList>
    

  
      <asp:Button ID="b1" runat="server" OnClick="b1_Click" />
   

    
    
    



</asp:Content>

