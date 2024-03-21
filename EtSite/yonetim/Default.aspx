<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/AnaPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EtSite.yonetim.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
Online Ziyaretçi : <asp:Label ID="lblOnlineZiyaretci" runat="server"></asp:Label>
<br />
<%--Bugün Toplam :
<asp:Label ID="lblBugunTop" runat="server"></asp:Label>
<br />
Bugün Tekil :
<asp:Label ID="lblBugunTekil" runat="server"></asp:Label>
<br />
Dün Toplam :
<asp:Label ID="lblDunTop" runat="server"></asp:Label>
<br />--%>
Toplam Ziyaretçi :
<asp:Label ID="lblGenelTop" runat="server"></asp:Label>
<br />
</asp:Content>
