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
    public partial class UcMasterOrta : System.Web.UI.UserControl
    {
        baglanti veri = new baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                RefGetir();
            }
        }

        void RefGetir()
        {
            try
            {
                DataTable dtRef = veri.GetDataTable("Select Top 20 * From Referanslar Where Aktif=1 Order By RefId Desc");


                if (dtRef.Rows.Count > 0)
                {
                    RpRef.DataSource = dtRef;
                    RpRef.DataBind();
                }
                else
                {
                    ulRef.Visible = false;
                }


            }
            catch (Exception)
            {

            }

        }
    }
}