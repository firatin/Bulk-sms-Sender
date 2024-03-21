using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CKFinder;
using System.IO;

namespace EtSite.yonetim
{
    public partial class Temalar : System.Web.UI.Page
    {
        baglanti veri = new baglanti();
        Label lbl1;
        string islem = "", TemaId = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (Page.IsPostBack == false)
            //{
            //    FileBrowser f1 = new FileBrowser();
            //    f1.BasePath = "../ckfinder/";
            //    f1.SetupCKEditor(CKEditorControl1);
            //}

            //try
            //{
            //    if (!Page.IsPostBack)
            //    {
            //        DataRow drbilgi = veri.GetDataRow("Select * From Ozellikler");
            //        CKEditorControl1.Text = drbilgi["Temalar"].ToString();
            //    }
            //}
            //catch (Exception)
            //{

            //}


            lbl1 = (Label)Master.FindControl("lblBilgi");
            lbl1.Text = "Tema Yönetimi";
            Page.Title = "Tema Yönetimi";


            try
            {
                islem = Request.QueryString["islem"];
                TemaId = Kontrol.SayiKontrol(Request.QueryString["TemaId"]);

            }
            catch (Exception)
            {
                Response.Redirect("Temalar.aspx");
            }


            if (islem == "duzenle" && TemaId != null)
            {
                if (Page.IsPostBack == false)
                {

                    DataRow DrBanner = veri.GetDataRow("Select * From Temalar Where TemaId=" + TemaId + "");

                    btnEkle.Visible = false;
                    btnDuzenle.Visible = true;
                    btnGeri.Visible = true;
                    FuResim.Visible = false;
                    if (DrBanner != null)
                    {

                        txtBaslik.Text = DrBanner["TemaAdi"].ToString().Trim();
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
                    string resimadi = veri.GetDataCell("Select Resim From Temalar Where TemaId=" + TemaId + "");
                    FileInfo fi150sil = new FileInfo(Server.MapPath("../Resimler/Ref/") + resimadi.ToString());
                    fi150sil.Delete();
                    veri.cmd("Delete From Temalar Where TemaId=" + TemaId + "");

                    Response.Redirect("Temalar.aspx");
                }
                catch (Exception)
                {

                }
            }

            try
            {
                TemaGetir();
            }
            catch (Exception)
            {
            }
        }

        void TemaGetir()
        {
            DataTable DtKayitlar = veri.GetDataTable("Select *, Case Aktif when 1 then 'Aktif' when 0 then 'Pasif' end as Durumadi from Temalar Order By TemaId Desc ");
            CollectionPager1.DataSource = DtKayitlar.DefaultView;
            CollectionPager1.BindToControl = RpKayit;
            RpKayit.DataSource = CollectionPager1.DataSourcePaged;
            RpKayit.DataBind();

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            //    SqlConnection baglanti = veri.baglan();
            //    SqlCommand cmd = new SqlCommand();
            //    cmd.Connection = baglanti;
            //    cmd.CommandType = CommandType.StoredProcedure;
            //    cmd.CommandText = "sp_TemaDuzenle";
            //    cmd.Parameters.AddWithValue("@Temalar", CKEditorControl1.Text);

            //    try
            //    {
            //        cmd.ExecuteNonQuery();
            //        Response.Redirect("Temalar.aspx");
            //    }
            //    catch (Exception ex)
            //    {
            //        Msg.Show(ex.Message);
            //    }
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
                        cmd.CommandText = "sp_TemaEkle";
                        cmd.Parameters.AddWithValue("@TemaAdi", txtBaslik.Text.Trim());
                        cmd.Parameters.AddWithValue("@Resim", resimadi);
                        cmd.Parameters.AddWithValue("@Url", txtUrl.Text);

                        cmd.ExecuteNonQuery();
                        Response.Redirect("Temalar.aspx");
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
            Response.Redirect("Temalar.aspx");
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
                cmd.CommandText = "sp_TemaDuzenle";
                cmd.Parameters.AddWithValue("@TemaAdi", txtBaslik.Text.Trim());
                cmd.Parameters.AddWithValue("@Url", txtUrl.Text);
                cmd.Parameters.AddWithValue("@Aktif", aktif);
                cmd.Parameters.AddWithValue("@TemaId", TemaId);

                cmd.ExecuteNonQuery();
                Response.Redirect("Temalar.aspx");
            }
            catch (Exception ex)
            {
                Msg.Show(ex.Message);

            }
        }

    }
}