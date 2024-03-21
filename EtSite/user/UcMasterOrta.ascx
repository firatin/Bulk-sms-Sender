<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcMasterOrta.ascx.cs" Inherits="EtSite.user.UcMasterOrta" %>
  	<h6 class="section-title">Referanslar</h6>

	<ul class="projects-carousel clearfix" id="ulRef" runat="server">

        <asp:Repeater ID="RpRef" runat="server">
            <ItemTemplate>
           
		<li>
			<a href="<%#Eval("Url")%>" target="_blank">
				<img src="Resimler/Ref/<%#Eval("Resim")%>" alt="<%#Eval("RefAdi")%>" title="<%#Eval("RefAdi")%>" width="236" height="150">
				<h5 class="title"><%#Eval("RefAdi")%></h5>
				
			</a>
		</li>

		 </ItemTemplate>
        </asp:Repeater>

	</ul><!-- end .projects-carousel -->


	<ul class="post-carousel">

		<li>

			<div class="entry-meta">

			</div><!-- end .entry-meta -->

			<div class="entry-body">

				<a href="/Paketler.aspx">
					<h5 class="title">Kullanıcı Dostu Arayüz</h5>
				</a>

				<p>Yazılımın kullanıcı dostu arayüzüyle hızlı ve kolay bir yönetim olanağı sağlıyoruz.
</p>
					
			</div><!-- end .entry-body -->

		</li>

		<li>


			<div class="entry-meta">


			</div><!-- end .entry-meta -->

			<div class="entry-body">

				<a href="/Paketler.aspx">
					<h5 class="title">İçerik Yönetim Sistemi</h5>
				</a>

				<p>Gelişmiş kolay düzenlenebilir içerik yönetim sistemi ile özelleştirilmiş ürünler.</p>
					
			</div><!-- end .entry-body -->

		</li>

		<li>

			<div class="entry-meta">

			
			</div><!-- end .entry-meta -->

			<div class="entry-body">

				<a href="/Paketler.aspx">
					<h5 class="title">Ücretsiz Faydalanın</h5>
				</a>

				<p>Uygun fiyata sahip olabilir ve tüm güncellemelerden ücretsiz yararlanabilirsiniz.
</p>
					
			</div><!-- end .entry-body -->

		</li>
        <li>

			<div class="entry-meta">

				
			</div><!-- end .entry-meta -->

			<div class="entry-body">

				<a href="/Demo-Talebi.aspx">
					<h5 class="title">15 Gün Deneyin</h5>
				</a>

				<p>15 gün boyunca ücretsiz olarak deneyin ve kullanım kolaylığını keşfedin.</p>
					
			</div><!-- end .entry-body -->

		</li>


	</ul><!-- end .post-carousel -->