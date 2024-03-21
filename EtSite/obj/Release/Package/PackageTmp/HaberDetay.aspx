<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="HaberDetay.aspx.cs" Inherits="EtSite.HaberDetay1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntSlider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cnticeriküst" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cnticerikorta" runat="server">
     <h1 class="title">
            <h2 class="callOut_Heading"><strong><asp:Label ID="lblBilgi" runat="server" ForeColor="Red"></asp:Label></strong></h2><br />
            <asp:Label ID="lblTarih" runat="server" ></asp:Label>
            <asp:Literal ID="ltrlDetay" runat="server"></asp:Literal>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cnticerikalt" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cntAlt" runat="server">
</asp:Content>
