using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace EtSite
{
    public partial class HaberDetay1 : System.Web.UI.Page
    {
        baglanti veri = new baglanti();
        string HaberId;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                HaberId = Kontrol.SayiKontrol(Kontrol.Temizle(RouteData.Values["HaberId"].ToString()));
            }
            catch (Exception)
            {
                Response.Redirect("/Default.aspx");
            }

            if (HaberId != null)
            {
                DataRow drHaber = veri.GetDataRow("Select * From Haberler Where HaberId=" + HaberId + "");
                if (drHaber != null)
                {
                    lblBilgi.Text = drHaber["HaberAdi"].ToString();
                    lblTarih.Text = Convert.ToDateTime(drHaber["Tarih"]).ToString("dd/MM/yyyy");
                    ltrlDetay.Text = drHaber["Detay"].ToString();

                    Page.Title = drHaber["HaberAdi"].ToString();
                    Page.MetaDescription = drHaber["HaberAdi"].ToString();
                    Page.MetaKeywords = drHaber["HaberAdi"].ToString();

                }
                else
                {
                    Response.Redirect("/Default.aspx");
                }
            }
        }
    }
}