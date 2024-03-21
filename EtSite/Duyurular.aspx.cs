using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EtSite
{
    public partial class Duyurular1 : System.Web.UI.Page
    {
        baglanti veri = new baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Duyurular";

            try
            {

                if (!Page.IsPostBack)
                {
                    DataTable DtHaberler = veri.GetDataTable("Select * From Haberler Where AktifMi=1 and SayfaMi=0 Order By HaberId Desc");
                    CollectionPager1.DataSource = DtHaberler.DefaultView;
                    CollectionPager1.BindToControl = RpDuyurular;
                    RpDuyurular.DataSource = CollectionPager1.DataSourcePaged;
                    RpDuyurular.DataBind();
                }
            }
            catch (Exception)
            {


            }
        }
    }
}