using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace EtSite.yonetim
{
    public partial class Referanslar : System.Web.UI.Page
    {
        baglanti veri = new baglanti();
        Label lbl1;
        string islem = "", RefId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl1 = (Label)Master.FindControl("lblBilgi");
            lbl1.Text = "Referans Yönetimi";
            Page.Title = "Referans Yönetimi";


            try
            {
                islem = Request.QueryString["islem"];
                RefId = Kontrol.SayiKontrol(Request.QueryString["RefId"]);

            }
            catch (Exception)
            {
                Response.Redirect("Referanslar.aspx");
            }


            if (islem == "duzenle" && RefId != null)
            {
                if (Page.IsPostBack == false)
                {

                    DataRow DrBanner = veri.GetDataRow("Select * From Referanslar Where RefId=" + RefId + "");

                    btnEkle.Visible = false;
                    btnDuzenle.Visible = true;
                    btnGeri.Visible = true;
                    FuResim.Visible = false;
                    if (DrBanner != null)
                    {

                        txtBaslik.Text = DrBanner["RefAdi"].ToString().Trim();
                        txtUrl.Text = DrBanner["Url"].ToString().Trim();

                        imgResim.ImageUrl = "../Resimler/Ref/" + DrBanner["Resim"].ToString().Trim();
                        imgResim.Visible = true;

                        if (DrBanner["Aktif"].ToString() == "True")
                        {
                            cbAktif.Checked = true;
                        }
                        else
                        {
                            cbAktif.Checked = false;
                        }
                    }
                }

            }
            else if (islem == "sil")
            {
                try
                {
                    string resimadi = veri.GetDataCell("Select Resim From Referanslar Where RefId=" + RefId + "");
                    FileInfo fi150sil = new FileInfo(Server.MapPath("../Resimler/Ref/") + resimadi.ToString());
                    fi150sil.Delete();
                    veri.cmd("Delete From Referanslar Where RefId=" + RefId + "");

                    Response.Redirect("Referanslar.aspx");
                }
                catch (Exception)
                {

                }
            }

            try
            {
                RefGetir();
            }
            catch (Exception)
            {
            }
        }
        void RefGetir()
        {
            DataTable DtKayitlar = veri.GetDataTable("Select *, Case Aktif when 1 then 'Aktif' when 0 then 'Pasif' end as Durumadi from Referanslar Order By RefId Desc ");
            CollectionPager1.DataSource = DtKayitlar.DefaultView;
            CollectionPager1.BindToControl = RpKayit;
            RpKayit.DataSource = CollectionPager1.DataSourcePaged;
            RpKayit.DataBind();

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            string resimadi = "";
            string uzanti = "";
            string resimtip = "";
            if (FuResim.HasFile)
            {
                resimtip = FuResim.PostedFile.ContentType;

                if (resimtip == "image/jpeg" || resimtip == "image/jpg" || resimtip == "image/png" || resimtip == "image/bmp")
                {

                    //rasgale sayı
                    Random numara = new Random();
                    Random numara2 = new Random();

                    int resimadisayi = numara.Next(1, 10000);
                    int resimSayi = numara2.Next(1, 7);
                    uzanti = Path.GetExtension(FuResim.PostedFile.FileName);
                    string[] resimDizi = { "r", "re", "res", "resi", "resim", "bannerres", "bnr" };
                    resimadi = resimDizi[resimSayi] + resimadisayi + uzanti;


                    FuResim.SaveAs(Server.MapPath("../Resimler/Ref/" + resimadi));

                    try
                    {
                       int aktif = 0;
                        if (cbAktif.Checked)
                        {
                            aktif = 1;
                        }
                       
                        SqlConnection baglanti = veri.baglan();
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = baglanti;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sp_RefEkle";
                        cmd.Parameters.AddWithValue("@RefAdi", txtBaslik.Text.Trim());
                        cmd.Parameters.AddWithValue("@Resim", resimadi);
                        cmd.Parameters.AddWithValue("@Url", txtUrl.Text);

                        cmd.ExecuteNonQuery();
                        Response.Redirect("Referanslar.aspx");
                    }
                    catch (Exception ex)
                    {
                        Msg.Show(ex.Message);

                    }


                }
                else
                {
                    Msg.Show("Resmin uzantısı sadece, JPG,PNG ve BMP olmalıdır.");
                }

            }
            else
            {
                Msg.Show("Resim Seçmediniz");
            }
        }

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("Referanslar.aspx");
        }

        protected void btnDuzenle_Click(object sender, EventArgs e)
        {
            try
            {

                int aktif = 0;
                if (cbAktif.Checked)
                {
                    aktif = 1;
                }
             
                SqlConnection baglanti = veri.baglan();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = baglanti;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_RefDuzenle";
                cmd.Parameters.AddWithValue("@RefAdi", txtBaslik.Text.Trim());
                cmd.Parameters.AddWithValue("@Url", txtUrl.Text);
                cmd.Parameters.AddWithValue("@Aktif", aktif);
                cmd.Parameters.AddWithValue("@RefId", RefId);

                cmd.ExecuteNonQuery();
                Response.Redirect("Referanslar.aspx");
            }
            catch (Exception ex)
            {
                Msg.Show(ex.Message);

            }
        }

    }
}