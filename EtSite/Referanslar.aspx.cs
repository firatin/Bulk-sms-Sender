using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EtSite
{
    public partial class Referanslar1 : System.Web.UI.Page
    {
        baglanti veri = new baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Referanslar";

            try
            {
                if (!Page.IsPostBack)
                {
                    DataTable dtSayfa = veri.GetDataTable("Select * From Referanslar Where Aktif=1 Order By RefId Desc");

                    if (dtSayfa.Rows.Count >= 1)
                    {

                        CollectionPager1.DataSource = dtSayfa.DefaultView;
                        CollectionPager1.BindToControl = dtreferans;
                        dtreferans.DataSource = CollectionPager1.DataSourcePaged;
                        dtreferans.DataBind();

                    }

                }
            }
            catch (Exception)
            {

            }
        }
    }
}