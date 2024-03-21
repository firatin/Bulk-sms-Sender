using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;
namespace EtSite
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RouteSet(RouteTable.Routes);
            Application.Add("toplamziyaretci", 0);
            Application["onlineziyaretci"] = 0;
        }
        void RouteSet(RouteCollection routes)
        {

            routes.MapPageRoute("haberdetay", "{HaberAdi}-{HaberId}.html", "~/HaberDetay.aspx");
        //   routes.MapPageRoute("sayfadetay", "{SayfaAdi}-{SayfaId}", "~/SayfaDetay.aspx");


        }
        protected void Session_Start(object sender, EventArgs e)
        {           
            Application["toplamziyaretci"] = ((int)Application["toplamziyaretci"]) + 1;
            Application["onlineziyaretci"] = ((int)Application["onlineziyaretci"]) + 1;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {        
            Application["onlineziyaretci"] = ((int)Application["onlineziyaretci"]) - 1;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}