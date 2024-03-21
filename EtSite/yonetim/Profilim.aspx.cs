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
    public partial class Profilim : System.Web.UI.Page
    {
         baglanti veri = new baglanti();
        string AdminId ;
        DataRow drAdmin;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label lbl1 = (Label)Master.FindControl("lblBilgi");
            lbl1.Text = "Profilim";

            try
            {
                AdminId = Session["AdminId"].ToString();
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx");
            }
            
            if (AdminId != null)
            {
                drAdmin = veri.GetDataRow("Select * From Tadmin Where AdminId=" + AdminId);

                if (drAdmin != null)
                {
                    if (Page.IsPostBack == false)
                    {
                        txtKullanici.Text = drAdmin["KullaniciAdi"].ToString();
                        txtMail.Text = drAdmin["Mail"].ToString();
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            string eskisifre;
            if (txtSifre.Text != txtSifreTekrar.Text)
            {
                lblBilgi.Text = "Girdiğiniz Şifreler Uyuşmamaktadır.";
            }
            else if (cboxSifre.Checked == true && txtSifre.Text == "")
            {
                lblBilgi.Text = "Lütfen Değiştirmek İstediğiniz Şifreyi Yazın.";
            }
            else
            {
                SqlConnection baglanti = veri.baglan();
                SqlCommand cmd = new SqlCommand("Update Tadmin Set Sifre=@Sifre,KullaniciAdi=@KullaniciAdi,Mail=@Mail where AdminId=" + AdminId, baglanti);

                cmd.Parameters.AddWithValue("KullaniciAdi", txtKullanici.Text);
                cmd.Parameters.AddWithValue("Mail", txtMail.Text);
                if (cboxSifre.Checked == true)
                {

                    cmd.Parameters.AddWithValue("Sifre", Kontrol.Md5Sifrele(txtSifreTekrar.Text));
                }
                else
                {

                    AdminId = Session["AdminId"].ToString();

                    DataRow drsifre = veri.GetDataRow("Select Sifre From Tadmin Where AdminId=" + AdminId);
                    eskisifre = drsifre["Sifre"].ToString();
                    cmd.Parameters.AddWithValue("Sifre", eskisifre);
                }
                cmd.ExecuteNonQuery();
                lblBilgi.Text = "Güncelleme Başarılı.";
                
            }
        }

        protected void cboxSifre_CheckedChanged(object sender, EventArgs e)
        {
            lnkSifreTavsiye.Visible = true;


            txtSifre.Enabled = true;
            txtSifreTekrar.Enabled = true;

            if (cboxSifre.Checked == false)
            {
                txtSifre.Enabled = false;
                txtSifreTekrar.Enabled = false;

                lnkSifreTavsiye.Visible = false;
                lblSifre.Visible = false;
                txtTavsiye.Visible = false;
            }
        }

        protected void lnkSifreTavsiye_Click(object sender, EventArgs e)
        {
            lblSifre.Text = "Şifre:";
            lblSifre.Visible = true;
            txtTavsiye.Text = Kontrol.SifreOlustur();
            txtTavsiye.Visible = true;
            txtTavsiye.Focus();
            lblSifreBilgi.Visible = true;
        
        }

        protected void lnkYeniSifreTavsiye_Click(object sender, EventArgs e)
        {
            txtYeniTavsiye.Visible = true;
            lblYeniSifreBilgi.Visible = true;
            lblYeniSifre.Visible = true;
            lblYeniSifre.Text = "Şifre:";
            txtYeniTavsiye.Text = Kontrol.SifreOlustur();
            txtYeniTavsiye.Focus();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = veri.baglan();
            SqlCommand cmd = new SqlCommand("Select * from Tadmin Where KullaniciAdi=@KullaniciAdi", baglanti);
            cmd.Parameters.AddWithValue("@KullaniciAdi", txtYeniKullanici.Text);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lblYeniBilgi.Text = "Bu isimde bir kullanıcı var";
            }

            else
            {

                try
                {

                    SqlConnection baglan = veri.baglan();
                    SqlCommand cmdiki = new SqlCommand("Insert Into Tadmin (KullaniciAdi,Sifre,Mail) Values (@KullaniciAdi,@Sifre,@Mail)", baglan);
                    cmdiki.Parameters.AddWithValue("KullaniciAdi", txtYeniKullanici.Text.Trim());
                    cmdiki.Parameters.AddWithValue("Sifre", Kontrol.Md5Sifrele(txtYeniTekrar.Text.Trim()));
                    cmdiki.Parameters.AddWithValue("Mail", txtYeniMail.Text.Trim());

                    cmdiki.ExecuteNonQuery();

                    Response.Redirect("Profilim.aspx");
                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }

            }
        }
    }
}