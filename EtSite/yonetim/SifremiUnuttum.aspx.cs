using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
namespace EtSite.Yonet
{

    public partial class SifremiUnuttum : System.Web.UI.Page
    {
         baglanti veri = new baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
           
                SqlConnection baglanti = veri.baglan();
                SqlCommand cmd = new SqlCommand("Select * from Tadmin Where Mail=@Mail", baglanti);
                cmd.Parameters.AddWithValue("@Mail", txtMail.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    try
                    {
                        SmtpClient kaynak = new SmtpClient("mail.mail.com");
                        MailAddress gonderen = new MailAddress("mail@mail.com", "Şifre Hatırlatma");
                        MailAddress giden = new MailAddress(dr["Mail"].ToString(), "Site Üyesi");

                        MailMessage mesaj = new MailMessage(gonderen, giden);
                        mesaj.IsBodyHtml = true;
                        mesaj.Subject = "Şifreniz";
                        string YeniSifreUret = "";
                        YeniSifreUret = Kontrol.SifreOlustur();
                        mesaj.Body = "Şifremi unuttum talebinde bulundunuz.<br>Yeni Şifreniz: " + YeniSifreUret;

                        kaynak.Send(mesaj);
                        Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Şifreniz Mail hesabınıza gönderildi.')</SCRIPT>");
                       
                        veri.cmd("Update Tadmin Set Sifre='" + Kontrol.Md5Sifrele(YeniSifreUret) + "'" + " Where Mail='" + txtMail.Text + "'");

                    }
                    catch
                    {
                        Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Şifreniz Gönderilemedi.')</SCRIPT>");

                    }
                }
                else
                {
                    // lblSifregonderBilgi.Text = "Mail adresinizi giriniz.";

                }

            }
       
    }
}