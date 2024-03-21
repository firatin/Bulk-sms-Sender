<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Referanslar.aspx.cs" Inherits="EtSite.Referanslar1" %>
<%@ Register assembly="CollectionPager" namespace="SiteUtils" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntSlider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cnticeriküst" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cnticerikorta" runat="server">
     <header class="page-header">
	
		<h1 class="page-title">Referanslar</h1>

		
	</header><!-- end .page-header -->

	<section id="portfolio-items" class="clearfix">
        <asp:DataList ID="dtreferans" runat="server" RepeatColumns="3" CellPadding="4">
                                <ItemTemplate>
		<article class="one-third" data-categories="illustration design">

			<a href="<%#Eval("Url")%>" target="_blank" class="single-image" title="<%#Eval("RefAdi")%>">
				<img src="Resimler/Ref/<%#Eval("Resim")%>" alt="<%#Eval("RefAdi")%>" height="220" width="280">
			</a>

			&nbsp;&nbsp;&nbsp;<a href="<%#Eval("Url")%>" target="_blank" class="project-meta" style='font-size: large; font-weight: 900; font-variant: small-caps; color: #FF3300; font-family: "Times New Roman", Times, serif; font-style: italic;'><h5 class="title , center"><%#Eval("RefAdi")%></h5>
               <%-- 	<span class="categories">Temayı Görüntüle</span>--%>
			</a>
				
			
		</article><!-- end .one-third (Altered) -->
</ItemTemplate>
                            </asp:DataList>
		

	</section>
    <ul class="pagination">
			 <cc1:collectionpager ID="CollectionPager1" runat="server" BackText="« Geri" LabelText="Sayfa:" NextText="İleri »" PageSize="12" QueryStringKey="Sayfa" ResultsFormat="">
          </cc1:collectionpager>
	  </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cnticerikalt" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cntAlt" runat="server">
</asp:Content>
