using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.IO;

namespace EtSite
{
    public partial class Uyelik : System.Web.UI.Page
    {
        baglanti veri = new baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Yeni Üyelik";
            Label lbl1 = (Label)Master.FindControl("lblBilgi");
        }
        protected void btnUyeOl_Click(object sender, EventArgs e)
        {

            string gsmno = txtGsm.Text;
            string sifirkaldir = txtGsm.Text.Substring(0, 1);
            if (sifirkaldir == "0")
            {
                gsmno = gsmno.ToString().Remove(0, 1);
            }

            SqlConnection baglan = veri.baglan();
            SqlCommand cmdkontrol = new SqlCommand();
            cmdkontrol = new SqlCommand("Select * from Uyeler Where Cepno=@Cepno", baglan);
            cmdkontrol.Parameters.AddWithValue("@Cepno", txtGsm.Text);
            SqlDataReader dr = cmdkontrol.ExecuteReader();

            if (dr.Read())
            {
                Msg.Show("Bu Cep Numarasını Kullanan Bir Kullanıcı Bulunmaktadır.");
            }
            else
            {

                SqlConnection baglanti = veri.baglan();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = baglanti;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_UyeEkle";
                cmd.Parameters.AddWithValue("@Ad", txtAd.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txbmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Sifre", Kontrol.Md5Sifrele(txtsifret.Text));
                cmd.Parameters.AddWithValue("@Sehir", txtSehir.Text.Trim());
                cmd.Parameters.AddWithValue("@Cepno", txtGsm.Text.Replace("_", "").Replace("(", "").Replace(")", ""));
                cmd.Parameters.AddWithValue("@Isno", txtTel.Text.Replace("_", "").Replace("(", "").Replace(")", ""));

                ////Service References http://api.egetoplusms.net/newapi.asmx
                //musterikayit.Service1SoapClient servis = new musterikayit.Service1SoapClient();
                //servis.musterikayit("5548730170", "112233", txtGsm.Text, txtsifret.Text, txbmail.Text, txtSehir.Text, txtAd.Text, txtGsm.Text, txtTel.Text, txtAd.Text, "0");
                //end reference

                yoneticisms();
               // uyesms();
                try
                {
                    cmd.ExecuteNonQuery();//sorguyu çalıştırır
                    Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Üyeliğiniz Oluşturuldu. Panele yönlendiriliyorsunuz...'); window.location.href ='http://sms.egetoplusms.net/';target=\"_blank\"</script>");
                }
                catch (Exception ex)
                {
                    //  lblBilgi.Text = "Bir Hata Oluştu, Lütfen Tekrar Deneyin.";
                    Msg.Show("Bir Hata Oluştu, Lütfen Tekrar Deneyin.");
                }
            }

        }

        //void uyesms()
        //{
        //    //-- Üyeye Sms gönderme--
        //    string apino = "1";
        //    string Kulladi = "5548730171", Sifre = "212121", mesaj = "Degerli uyemiz kullanici adiniz : " + txtGsm.Text + " Parolaniz : " + txtsifret.Text + " Bilgi ve satis : 0232 873 45 16 www.egetoplusms.net";
        //    string islemler = "", cevap;

        //    HttpWebRequest req = (HttpWebRequest)WebRequest.Create("http://kurecell.com.tr/kurecellapiV2/api-center/index.php");

        //    req.Method = "Post";
        //    req.ContentType = "application/x-www-form-urlencoded";
        //    //--05301483078
        //    islemler = req + "&apiNo=" + apino + "&islem=1" + "&user=" + Kulladi + "&pass=" + Sifre + "&mesaj=" + trDuzelt(mesaj) + "&numaralar=" + txtGsm.Text + "&baslik=" + "EGESMS"; req.ContentLength = islemler.Length;

        //    StreamWriter stOut = new StreamWriter(req.GetRequestStream(), System.Text.Encoding.ASCII);
        //    stOut.Write(islemler);
        //    stOut.Close();

        //    StreamReader stIn = new StreamReader(req.GetResponse().GetResponseStream());
        //    cevap = stIn.ReadToEnd();

        //    stIn.Close();
        //}
        void yoneticisms()
        {
            //-- Yöneticiye Sms gönderme--
            string apino = "1";
            string Kulladi = "5548730171", Sifre = "212121", mesaj = "Uyelik Basvurusu " + txtGsm.Text + " " + txtAd.Text + " " + txtTel.Text;
            string islemler = "", cevap;

            HttpWebRequest req = (HttpWebRequest)WebRequest.Create("http://kurecell.com.tr/kurecellapiV2/api-center/index.php");

            req.Method = "Post";
            req.ContentType = "application/x-www-form-urlencoded";
            //--05301483078
            islemler = req + "&apiNo=" + apino + "&islem=1" + "&user=" + Kulladi + "&pass=" + Sifre + "&mesaj=" + trDuzelt(mesaj) + "&numaralar=" + "5548730170" + "&baslik=" + "EGESMS";
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