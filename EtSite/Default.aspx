<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EtSite.Default1" %>

<%@ Register Src="~/user/usSlider.ascx" TagPrefix="uc1" TagName="usSlider" %>
<%@ Register Src="~/user/usiceriküst.ascx" TagPrefix="uc1" TagName="usiceriküst" %>
<%@ Register Src="~/user/usicerikorta.ascx" TagPrefix="uc1" TagName="usicerikorta" %>
<%@ Register Src="~/user/usicerikalt.ascx" TagPrefix="uc1" TagName="usicerikalt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntSlider" runat="server">
    <uc1:usSlider runat="server" ID="usSlider" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cnticeriküst" runat="server">
        <uc1:usicerikalt runat="server" ID="usicerikalt" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cnticerikorta" runat="server">
    <uc1:usicerikorta runat="server" ID="usicerikorta" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cnticerikalt" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cntAlt" runat="server">
</asp:Content>
