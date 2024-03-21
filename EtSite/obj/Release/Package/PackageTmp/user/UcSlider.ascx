<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcSlider.ascx.cs" Inherits="EtSite.user.UcSlider" %>
 <div class="TB_Wrapper" >
		
     <asp:Repeater ID="RpSlider" runat="server">
                    <ItemTemplate>
	<div class="Slide">
		<img src="Resimler/Banner/<%#Eval("Resim")%>" alt="<%#Eval("Baslik")%>" width="940" height="310" />
		<div align="left">			
		<a href="<%#Eval("UrlAdres")%>" target="<%#Eval("YeniSayfada")%>"><%#Eval("Baslik")%></a>
		</div>
	</div>
	 </ItemTemplate>
                </asp:Repeater>
               
     </div>
<br />