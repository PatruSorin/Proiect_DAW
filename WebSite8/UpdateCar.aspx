<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateCar.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="BrandLabel" runat="server" Text="Brand"></asp:Label>
    <br />
    <asp:DropDownList ID="Brand" runat="server" DataTextField="BrandName" DataValueField="Id" DataSourceID="SqlDataSource1"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:DefaultConnection%>" SelectCommand="Select [Id],[BrandName] From [Brand]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="ModelLabel" runat="server" Text="Model"></asp:Label>
    <br />
    <asp:TextBox ID="Model" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Model"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="MaxSpeedLabel" runat="server" Text="Max Speed"></asp:Label>
    <br />
    <asp:TextBox ID="MaxSpeed" runat="server"></asp:TextBox>
    <asp:RangeValidator Type="Integer" ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ControlToValidate="MaxSpeed" MinimumValue="20" MaximumValue="600"></asp:RangeValidator>
    <br />
    <br />
    <asp:Label ID="PowerLabel" runat="server" Text="Power"></asp:Label>
    <br />
    <asp:TextBox ID="Power" runat="server"></asp:TextBox>
    <asp:RangeValidator Type="Integer" ID="RangeValidator2" runat="server" ErrorMessage="RangeValidator" ControlToValidate="Power" MinimumValue="40" MaximumValue="800"></asp:RangeValidator>
    <br />
    <br />
    <asp:Label ID="ColorLabel" runat="server" Text="Color"></asp:Label>
    <br />
    <asp:TextBox ID="Color" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Color"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="DateLabel" runat="server" Text="Date"></asp:Label>
    <br />
    <asp:TextBox ID="Date" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareDate" runat="server" ErrorMessage="Date Type idk" Operator="DataTypeCheck" Type="Date" ControlToValidate="Date"></asp:CompareValidator>
    <br />
    <br />
    <asp:Button ID="UpdateButton" runat="server" Text="Update" OnClick="UpdateButtonClick" />
</asp:Content>

