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

namespace EtSite
{
    public partial class iletisim1 : System.Web.UI.Page
    {
        baglanti veri = new baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "İletişim Bilgilerimiz";

            try
            {
                if (Page.IsPostBack == false)
                {
                    DataRow Driletisim = veri.GetDataRow("Select * From iletisim");
                    lblAdres.Text = Driletisim["Adres"].ToString();
                    lblAdres0.Text = Driletisim["Adres1"].ToString();
                    lblTel.Text = Driletisim["Tel1"].ToString();
                    lblCep.Text = Driletisim["Tel2"].ToString();
                    lblTel0.Text = Driletisim["Tel3"].ToString();
                    lblCep0.Text = Driletisim["Tel4"].ToString();
                    lblFax.Text = Driletisim["Fax"].ToString();
                    lblFax0.Text = Driletisim["Fax1"].ToString();
                    lblMail.Text = Driletisim["Mail"].ToString();
                    lblMail0.Text = Driletisim["Mail1"].ToString();
                }
            }
            catch (Exception)
            {


            }
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            string smtpadres, gidenmail, mailsifre;
            int mailport;
            DataRow drveri = veri.GetDataRow("Select Mail,Smtp,MailPort,MailSifre From iletisim");

            smtpadres = drveri["Smtp"].ToString();
            gidenmail = drveri["Mail"].ToString();
            mailport = Convert.ToInt32(drveri["MailPort"]);
            mailsifre = drveri["MailSifre"].ToString();

            string mailmesaj = "";
            mailmesaj += "<b>İletişim Formundan Bir Mail Aldınız.</b><br/>";
            mailmesaj += "<b>Adı Soyadı:</b> " + txtAd.Text + "<br/>";
            mailmesaj += "<b>Email Adresi:</b> " + txtMail.Text + "<br/>";
            mailmesaj += "<b>Telefon Numarası:</b> " + txtTel.Text + "<br/>";
            mailmesaj += "<b>Tarih:</b> " + DateTime.Now.ToString() + "<br/>";
            mailmesaj += "<b>Mesaj:</b> " + txtMesaj.Text + "<br/>";

            SmtpClient smtp = new SmtpClient();
            smtp.Port = mailport;
            smtp.Host = smtpadres;
            smtp.EnableSsl = true;
            smtp.Credentials = new NetworkCredential(gidenmail, mailsifre);
            MailAddress mSender = new MailAddress(txtMail.Text);
            MailAddress mTo = new MailAddress(gidenmail);
            MailMessage newMail = new MailMessage(mSender, mTo);

            newMail.IsBodyHtml = true;
            newMail.Subject = "Eticaret 4";
            newMail.Body = mailmesaj;

            try
            {

                smtp.Send(newMail);
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Mesajınız Gönderildi'); window.location.href ='/iletisim.aspx';</script>");
            }
            catch (Exception ex)
            {
                Msg.Show("Mesajınız gönderilemedi tekrar deneyiniz. " + ex.Message);

            }
        }
    }
}