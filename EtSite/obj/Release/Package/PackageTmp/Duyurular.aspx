<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Duyurular.aspx.cs" Inherits="EtSite.Duyurular1" %>
<%@ Register assembly="CollectionPager" namespace="SiteUtils" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntSlider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cnticeriküst" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cnticerikorta" runat="server">
    <div class="entry-content">	 
        <asp:Repeater ID="RpDuyurular" runat="server">
                                                <ItemTemplate>				
						<div class="post">
						
							<div class="post_content">
                               
								<h2 class="entry-title">
                                    <a href="/<%#Kontrol.UrlSeo(Eval("HaberAdi").ToString())%>-<%#Eval("HaberId")%>.html"><%#Eval("HaberAdi")%></a></h2>
									<div class="post-info">
										<div class="post-metadata">
											<span><%#String.Format("{0:dd/MM/yyyy}",  Eval("Tarih"))%></span>											
										</div>														
									</div>
									<!-- post-info -->	
									<div class="post-entry">
										<p><%#Kontrol.OzetCek(Eval("Detay").ToString(),500)%></p>
										<a href="/<%#Kontrol.UrlSeo(Eval("HaberAdi").ToString())%>-<%#Eval("HaberId")%>.html"><span>Devamı...</span></a>
									</div>
							</div>
                                                  
							<!-- .post_content -->	
						</div>
                                                      </ItemTemplate>
                                 </asp:Repeater>
    </div>
		

		<ul class="pagination">
			 <cc1:collectionpager ID="CollectionPager1" runat="server" BackText="« Geri" LabelText="Sayfa:" NextText="İleri »" PageSize="10" QueryStringKey="Sayfa" ResultsFormat="">
          </cc1:collectionpager>
	  </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cnticerikalt" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cntAlt" runat="server">
</asp:Content>
