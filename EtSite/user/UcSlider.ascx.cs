using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace EtSite.user
{
    public partial class UcSlider : System.Web.UI.UserControl
    {
        baglanti veri = new baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    DataTable dtResim = veri.GetDataTable("Select * From BannerYonetimi Where Aktif=1 Order By BannerId Desc");
                    RpSlider.DataSource = dtResim;
                    RpSlider.DataBind();
                }

            }
            catch (Exception)
            {

            }
        }
    }
}