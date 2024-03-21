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
    public partial class Bayilik : System.Web.UI.Page
    {
        baglanti veri = new baglanti();
        public string Logo, Title, Face, Twit;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                DataRow drBilgi = veri.GetDataRow("Select * From MetaTag");

                Page.Title = "BAYİLİK";

                Page.MetaDescription = drBilgi["Descript"].ToString();
                Page.MetaKeywords = drBilgi["Title"].ToString();
            }

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = veri.baglan();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = baglanti;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_BayiEkle";
            cmd.Parameters.AddWithValue("@Ad", txbAd.Text.Trim());
            cmd.Parameters.AddWithValue("@email", txbEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Sifre", Kontrol.Md5Sifrele(txbPwd.Text));
            cmd.Parameters.AddWithValue("@ceptelefonu", txtGsm.Text.Replace("_", "").Replace("(", "").Replace(")", ""));
            cmd.Parameters.AddWithValue("@istelefonu", txtTel.Text.Replace("_", "").Replace("(", "").Replace(")", ""));
            cmd.Parameters.AddWithValue("@web", txbweb.Text);

            yoneticisms();
            //uyesms();
            try
            {
                cmd.ExecuteNonQuery();//sorguyu çalıştırır
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Bayiliğiniz Oluşturuldu. Anasayfaya Yönlendiriliyorsunuz...'); window.location.href ='http://bayi.egetoplusms.net/';</script>");
            }
            catch (Exception ex)
            {
                //  lblBilgi.Text = "Bir Hata Oluştu, Lütfen Tekrar Deneyin.";
                Msg.Show("Bir Hata Oluştu, Lütfen Tekrar Deneyin." + ex.Message);
            }
        }
        void yoneticisms()
        {
            //-- Yöneticiye Sms gönderme--
            string apino = "1";
            string Kulladi = "5548730171", Sifre = "212121", mesaj = "Bayilik Basvurusu " + txtGsm.Text + " " + txbAd.Text + " " + txtTel.Text;
            string islemler = "", cevap;

            HttpWebRequest req = (HttpWebRequest)WebRequest.Create("http://kurecell.com.tr/kurecellapiV2/api-center/index.php");

            req.Method = "Post";
            req.ContentType = "application/x-www-form-urlencoded";

            islemler = req + "&apiNo=" + apino + "&islem=1" + "&user=" + Kulladi + "&pass=" + Sifre + "&mesaj=" + trDuzelt(mesaj) + "&numaralar=" + "5548730170" + "&baslik=" + "EGESMS";
            req.ContentLength = islemler.Length;

            StreamWriter stOut = new StreamWriter(req.GetRequestStream(), System.Text.Encoding.ASCII);
            stOut.Write(islemler);
            stOut.Close();

            StreamReader stIn = new StreamReader(req.GetResponse().GetResponseStream());
            cevap = stIn.ReadToEnd();

            stIn.Close();
        }
        //void uyesms()
        //{
        //    //-- Üyeye Sms gönderme--

        //    string Kulladi = "5548730171", Sifre = "212121", mesaj = "Degerli uyemiz kullanici adiniz : " + txtGsm.Text + " Parolaniz : " + txbPwd.Text + " Bilgi ve satis : 0530 292 39 45 www.egetoplusms.net";
        //    string islemler = "", cevap;

        //    HttpWebRequest req = (HttpWebRequest)WebRequest.Create("http://kurecell.com.tr/kurecellapiV2/api-center/index.php");

        //    req.Method = "Post";
        //    req.ContentType = "application/x-www-form-urlencoded";

        //    islemler = req + "&islem=1" + "&user=" + Kulladi + "&pass=" + Sifre + "&mesaj=" + trDuzelt(mesaj) + "&numaralar=" + txtGsm.Text + "&baslik=" + "EGETOPLUSMS"; req.ContentLength = islemler.Length;

        //    StreamWriter stOut = new StreamWriter(req.GetRequestStream(), System.Text.Encoding.ASCII);
        //    stOut.Write(islemler);
        //    stOut.Close();

        //    StreamReader stIn = new StreamReader(req.GetResponse().GetResponseStream());
        //    cevap = stIn.ReadToEnd();

        //    stIn.Close();
        //}
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