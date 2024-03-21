using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EtSite
{
    public partial class Evrak : System.Web.UI.Page
    {
         baglanti veri = new baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnYukle_Click(object sender, EventArgs e)
        {
            //string belgeadi = "";
            //string uzanti = "";
            //string belgetip = "";
            //if (FuBelge.HasFile)
            //{
            //    belgetip = FuBelge.PostedFile.ContentType;

            //    if (belgetip == "winrar/rar")
            //    {

            //        uzanti = Path.GetExtension(FuBelge.PostedFile.FileName);

            //        belgeadi = "sitelogo" + uzanti;

            //        FuBelge.SaveAs(Server.MapPath("../Belgeler/" + belgeadi));

            //        try
            //        {
            //            SqlConnection baglanti = veri.baglan();
            //            SqlCommand cmd = new SqlCommand("İnser into Evrak Set EvrakYolu=@EvrakYolu", baglanti);
            //            cmd.Parameters.AddWithValue("SiteLogo", belgeadi.ToString());
            //            cmd.ExecuteNonQuery();
            //            Response.Redirect("Seo.aspx");
            //        }
            //        catch (Exception)
            //        {


            //        }


            //    }
            //    else
            //    {
            //        Msg.Show("Belgenin uzantısı sadece WinRAR(.rar) olmalıdır");
            //    }

            //}
            //else
            //{
            //    Msg.Show("Belge Seçmediniz");
            //}
        }
    }
}