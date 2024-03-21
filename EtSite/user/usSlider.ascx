<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="usSlider.ascx.cs" Inherits="EtSite.user.usSlider" %>
		<div id="featured_slider">
			<div class="slider_stretched">
			<script type="text/javascript">
			    jQuery(document).ready(function ($) {
			        jQuery(".flexslider").flexslider({
			            animation: "fade",
			            controlsContainer: ".flex-container",
			            slideshow: true,
			            slideshowSpeed: 3000,
			            animationDuration: 400,
			            directionNav: true,
			            controlNav: false,
			            mousewheel: false,
			            smoothHeight: true,
			            start: function (slider) {
			                jQuery(".total-slides").text(slider.count);
			            },
			            after: function (slider) {
			                jQuery(".current-slide").text(slider.currentSlide);
			            }
			        });
			    });
			</script>
				<div class="flexslider">
					<ul class="slides">
                        <asp:Repeater ID="RpSlider" runat="server">
                            <ItemTemplate>			
						<li>
							<a href="<%#Eval("UrlAdres")%>" target="<%#Eval("YeniSayfada")%>" class="single-image">
                                <img src="Resimler/Banner/<%#Eval("Resim")%>" alt="<%#Eval("Baslik")%>" alt="" width="300px" height="500px"/></a>		
							<div class="flex-caption">
								<div class="flex-title">
									<h5><span>Slider 3</span></h5>
								</div>
								</div>
						</li>
                            </ItemTemplate>
                        </asp:Repeater>							
					</ul>
					<ul class="flex-direction-nav">
						<li><a href="#" class="flex-prev">Previous</a></li>
						<li><a href="#" class="flex-next">Next</a></li>
					</ul>
				</div><!-- .flex_slider -->
			</div><!-- .slider_stretched -->
		</div><!-- #featured_slider -->
