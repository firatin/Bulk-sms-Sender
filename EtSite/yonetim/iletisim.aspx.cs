using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace EtSite.yonetim
{
    public partial class iletisim : System.Web.UI.Page
    {
        baglanti veri = new baglanti();
        string MailSifre;
        DataRow drbilgi;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "İletişim Bilgileri";
            Label lbl = (Label)Master.FindControl("lblBilgi");
            lbl.Text = "İletişim Bilgiler";

            drbilgi = veri.GetDataRow("Select * From iletisim");
            MailSifre = drbilgi["MailSifre"].ToString();
            if (!Page.IsPostBack)
            {
                try
                {
                   

                    txtAdres.Text = drbilgi["Adres"].ToString();
                    txtAdres0.Text = drbilgi["Adres1"].ToString();
                    txtTel1.Text = drbilgi["Tel1"].ToString();
                    txtTel2.Text = drbilgi["Tel2"].ToString();
                    txtTel3.Text = drbilgi["Tel3"].ToString();
                    txtTel4.Text = drbilgi["Tel4"].ToString();
                    txtFax.Text = drbilgi["Fax"].ToString();
                    txtFax0.Text = drbilgi["Fax1"].ToString();
                    txtMail.Text = drbilgi["Mail"].ToString();
                    txtMail0.Text = drbilgi["Mail1"].ToString();
                   
                    txtMailSmtp.Text = drbilgi["Smtp"].ToString();
                    txtPort.Text = drbilgi["MailPort"].ToString();
                    txtHarita.Text = drbilgi["Harita"].ToString();
                }
                catch (Exception ex)
                {
                    Msg.Show(ex.Message);
                }

            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = veri.baglan();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = baglanti;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_iletisim";
            cmd.Parameters.AddWithValue("@Adres",txtAdres.Text);
            cmd.Parameters.AddWithValue("@Adres1", txtAdres0.Text);
            cmd.Parameters.AddWithValue("@Tel1", txtTel1.Text);
            cmd.Parameters.AddWithValue("@Tel2", txtTel2.Text);
            cmd.Parameters.AddWithValue("@Tel3", txtTel3.Text);
            cmd.Parameters.AddWithValue("@Tel4", txtTel4.Text);
            cmd.Parameters.AddWithValue("@Fax", txtFax.Text);
            cmd.Parameters.AddWithValue("@Fax1", txtFax0.Text);
            cmd.Parameters.AddWithValue("@Mail", txtMail.Text);
            cmd.Parameters.AddWithValue("@Mail1", txtMail0.Text);

            if (txtSifre.Text!="")
            {
                cmd.Parameters.AddWithValue("@MailSifre", txtSifre.Text);
            }
            else
            {
                cmd.Parameters.AddWithValue("@MailSifre", MailSifre);
            }

            cmd.Parameters.AddWithValue("@Smtp", txtMailSmtp.Text);
            cmd.Parameters.AddWithValue("@MailPort", txtPort.Text);
            cmd.Parameters.AddWithValue("@Harita", txtHarita.Text);

            try
            {
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Msg.Show(ex.Message);
            }
        
        }
    }
}