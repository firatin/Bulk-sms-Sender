using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CKFinder;

namespace EtSite.yonetim
{
    public partial class Paketler : System.Web.UI.Page
    {
        baglanti veri = new baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                FileBrowser f1 = new FileBrowser();
                f1.BasePath = "../ckfinder/";
                f1.SetupCKEditor(CKEditorControl1);
            }

            try
            {
                if (!Page.IsPostBack)
                {
                    DataRow drbilgi = veri.GetDataRow("Select * From Ozellikler");
                    CKEditorControl1.Text = drbilgi["Paketler"].ToString();
                }
            }
            catch (Exception)
            {

            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = veri.baglan();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = baglanti;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_PaketDuzenle";
            cmd.Parameters.AddWithValue("@Paketler", CKEditorControl1.Text);

            try
            {
                cmd.ExecuteNonQuery();
                Response.Redirect("Paketler.aspx");
            }
            catch (Exception ex)
            {
                Msg.Show(ex.Message);
            }
        }
    }
}