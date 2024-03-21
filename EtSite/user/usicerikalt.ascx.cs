using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EtSite.user
{
    public partial class usicerikalt : System.Web.UI.UserControl
    {
        baglanti veri = new baglanti();
        DataRow drUrun;
        protected void Page_Load(object sender, EventArgs e)
        {
            aciklama();
        }
        void aciklama()
        {
            drUrun = veri.GetDataRow("select ozellik from ozellikler");

            if (drUrun != null)
            {
                ltrlDetay.Text = drUrun["ozellik"].ToString();


            }
        }
    }
}