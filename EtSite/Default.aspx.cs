using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EtSite
{
    public partial class Default1 : System.Web.UI.Page
    {
        baglanti veri = new baglanti();
        public string Logo, Title, Face, Twit;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                DataRow drBilgi = veri.GetDataRow("Select * From MetaTag");

                Title = drBilgi["Title"].ToString();
                Page.Title = Title;
                Page.MetaDescription = drBilgi["Descript"].ToString();
                Page.MetaKeywords = drBilgi["Title"].ToString();
            }

        }
    }
}