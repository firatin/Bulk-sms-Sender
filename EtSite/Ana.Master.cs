using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EtSite
{
    public partial class Ana : System.Web.UI.MasterPage
    {
        baglanti veri = new baglanti();
        public string Logo, Title, Face, Twit;
        protected void Page_Load(object sender, EventArgs e)
        {
            SayfaGetir();
            BilgiGet();
            duyuruget();

            if (Logo == "")
            {
                divLogo.Visible = false;
            }
            DataRow drBilgi = veri.GetDataRow("Select * From MetaTag");
            Logo = drBilgi["SiteLogo"].ToString();
            if (Page.IsPostBack == false)
            {
                Title = drBilgi["Title"].ToString();
                //Page.Title = Title;
                Page.MetaDescription = drBilgi["Descript"].ToString();
                Page.MetaKeywords = drBilgi["Keywords"].ToString();
                lblFooter.Text = drBilgi["Footer"].ToString();
                
                Twit = drBilgi["Twitter"].ToString();
                Face = drBilgi["Facebook"].ToString();
            }

        }
        void SayfaGetir()
        {
            try
            {
                DataTable dtSayfa = veri.GetDataTable("Select HaberId,HaberAdi From Haberler Where AktifMi=1 and SayfaMi=1");
                RpSayfa.DataSource = dtSayfa;
                RpSayfa.DataBind();

            }
            catch (Exception)
            {

            }
        }
        void BilgiGet()
        {
            DataRow drBilgi = veri.GetDataRow("Select * from iletisim");
            lblGsm.Text = drBilgi["Tel1"].ToString();
            lblFax.Text = drBilgi["Fax"].ToString();
            lblMail.Text = drBilgi["Mail"].ToString();
            //lblAdres.Text = drBilgi["FirmaAdresi"].ToString();
        }

        protected void btnİstek_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = veri.baglan();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = baglanti;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_Ulasim";
            cmd.Parameters.AddWithValue("@Ad", txtadi.Text.Trim());
            cmd.Parameters.AddWithValue("@Tel", txtTeli.Text.Replace("_", "").Replace("(", "").Replace(")", ""));

            //yoneticisms();
            try
            {
                cmd.ExecuteNonQuery();
                Msg.Show("İsteğiniz iletildi, sizinle iletişime geçilecektir.");

                txtadi.Text = "";
                txtTeli.Text = "";
            }
            catch (Exception)
            {

                Msg.Show("Bir Hata Oluştu, Lütfen Tekrar Deneyin.");
            }
        }
        void duyuruget()
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    DataTable dtDuyuru = veri.GetDataTable("Select top 6 * From Haberler Where AktifMi=1 and SayfaMi=0 Order By HaberId Desc");
                    RpDuyurular.DataSource = dtDuyuru;
                    RpDuyurular.DataBind();
                }
            }
            catch (Exception)
            {


            }
        }
        void yoneticisms()
        {
            //-- Yöneticiye Sms gönderme--
            string apino = "1";
            string Kulladi = "5548730171", Sifre = "212121", mesaj = "iletisim istegi " + txtTeli.Text + " " + txtadi.Text;
            string islemler = "", cevap;

            HttpWebRequest req = (HttpWebRequest)WebRequest.Create("http://kurecell.com.tr/kurecellapiV2/api-center/index.php");

            req.Method = "Post";
            req.ContentType = "application/x-www-form-urlencoded";
            //--05301483078
            islemler = req + "&apiNo=" + apino + "&islem=1" + "&user=" + Kulladi + "&pass=" + Sifre + "&mesaj=" + trDuzelt(mesaj) + "&numaralar=" + "5548730170" + "&baslik=" + "EGETOPLUSMS";
            req.ContentLength = islemler.Length;

            StreamWriter stOut = new StreamWriter(req.GetRequestStream(), System.Text.Encoding.ASCII);
            stOut.Write(islemler);
            stOut.Close();

            StreamReader stIn = new StreamReader(req.GetResponse().GetResponseStream());
            cevap = stIn.ReadToEnd();

            stIn.Close();
        }
        public string trDuzelt(string a)
        {
            a = a.Replace("İ", "I");
            a = a.Replace("Ü", "U");
            a = a.Replace("Ç", "C");
            a = a.Replace("Ş", "S");
            a = a.Replace("Ö", "O");
            a = a.Replace("Ã ", "G");
            a = a.Replace("Ğ ", "G");
            a = a.Replace("ğ", "g");
            a = a.Replace("ı", "i");
            a = a.Replace("ü", "u");
            a = a.Replace("ş", "s");
            a = a.Replace("ç", "c");
            a = a.Replace("ğ", "g");
            a = a.Replace("ö", "o");
            return a;
        }
    }
}