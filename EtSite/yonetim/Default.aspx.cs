using Google.GData.Analytics;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EtSite.yonetim
{
    public partial class Default : System.Web.UI.Page
    {
        Int32 _intVisists = 0;
        Int32 _intPageViewVisit = 0;
        baglanti veri = new baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label lbl1 = (Label)Master.FindControl("lblBilgi");
            lbl1.Text = "Hoş Geldiniz. ";
            lblOnlineZiyaretci.Text = " " + Application["onlineziyaretci"];
            lblGenelTop.Text = " " + Application["toplamziyaretci"];

        }
        //public void Istatistik()
        //{
        //    string IpAdres = Request.ServerVariables["REMOTE_ADDR"].ToString();//Ip Adresini alıyoruz.
        //    string Tarih = DateTime.Now.ToShortDateString();
        //    lblOnlineZiyaretci.Text = Application["OnlineUsers"].ToString();//Online ziyaretçi

        //    //Ogüne Ait Hit Bilgi Güncelleme
        //    DataRow drHit = veri.GetDataRow("Select * from SayacHit Where Tarih='" + Tarih + "'");
        //    if (drHit == null)
        //    {
        //        //Bugüne ait kayıt yoksa bugunün ilk siftahını yap
        //        veri.cmd("Insert into SayacHit(Tarih,Tekil,Cogul) values('" + Tarih + "',1,1)");
        //    }
        //    else
        //    {

        //        string SayfaAdi = Page.ToString().Replace("_aspx", ".aspx").Remove(0, 4); //Sayfa adını alıyoruz.
        //        if (SayfaAdi == "/Default.aspx") //Güncelleme işlemini sadece anasayfadaysa yapıyoruz
        //        {
        //            //Bugüne ait kayıt varsa Çoğulu 1 artırıyoruz.
        //            veri.cmd("Update SayacHit set Cogul=Cogul+1 where Tarih='" + Tarih + "'");
                    
        //        }

        //        //Tekil artımı için önce Ip kontrolü yapıyoruz.
        //        DataRow drIpKontrol = veri.GetDataRow("select * from SayacIp Where Ip='" + IpAdres + "'");
        //        if (drIpKontrol == null)
        //        { //Eğer ip yoksa tekilide artırabiliriz. Ip kayıtlı ise artırma işlemi yapmıyoruz.
        //            veri.cmd("Update SayacHit set Tekil=Tekil+1 Where Tarih='" + Tarih + "'");
        //        }
        //    }


        //    //Giren Kişinin IP sini Kaydetme
        //    DataRow drIp = veri.GetDataRow("Select * from SayacIp Where Ip='" + IpAdres + "'");
        //    if (drIp == null)
        //    {
        //        veri.cmd("Insert into SayacIp(Ip,Tarih) values('" + IpAdres + "','" + Tarih + "')");
        //    }


        //    //Ekrana Bilgileri Yazdırabiliriz
        //    DataRow drSonuc = veri.GetDataRow("Select * from SayacHit Where Tarih='" + Tarih + "'");
        //    lblBugunTop.Text = drSonuc["Cogul"].ToString();
        //    lblBugunTekil.Text = drSonuc["Tekil"].ToString();
        //    //Dün Bilgilerini Çekme
        //    DataRow drDun = veri.GetDataRow("Select * from SayacHit Where Tarih='" + DateTime.Now.AddDays(-1).ToShortDateString() + "'");
        //    DataRow drGenel = veri.GetDataRow("Select SUM(Tekil) as Toplam from SayacHit");
        //    if (drDun != null)
        //    {
        //        lblDunTop.Text = drDun["Tekil"].ToString();
        //    }
        //    else
        //    {
        //        lblDunTop.Text = "0";
        //    }

        //    lblGenelTop.Text = drGenel["Toplam"].ToString();
        //}
        //private void RefreshFeed()
        //{
        //    // your Google analytics username and password here
        //    string userName = "unityazilim@gmail.com";
        //    string passWord = "un\"123456";
        //    const string dataFeedUrl = "https://www.google.com/analytics/feeds/data";


        //    AccountQuery query = new AccountQuery();
        //    AnalyticsService service = new AnalyticsService("AnalyticsSampleApp");
        //    if (!string.IsNullOrEmpty(userName))
        //    {
        //        service.setUserCredentials(userName, passWord);
        //    }
        //    string str = "";
        //    AccountFeed accountFeed = service.Query(query);
        //    foreach (AccountEntry entry in accountFeed.Entries)
        //    {
        //        str = entry.ProfileId.Value;
        //    }


        //    DataQuery query1 = new DataQuery(dataFeedUrl);
        //    // Bounce Rate Calculations
        //    query1.Ids = str;
        //    query1.Metrics = "ga:visits,ga:bounces";//visitors
        //    query1.Sort = "ga:visits";
        //    query1.GAStartDate = DateTime.Now.AddMonths(-1).AddDays(-2).ToString("yyyy-MM-dd");
        //    query1.GAEndDate = DateTime.Now.AddDays(-3).ToString("yyyy-MM-dd");
        //    query1.StartIndex = 1;

        //    int cnt = 0;
        //    double incntDone = 0.0;
        //    DataFeed dataFeed11 = service.Query(query1);
        //    foreach (DataEntry entry in dataFeed11.Entries)
        //    {
        //        string st = entry.Title.Text;
        //        string ss = entry.Metrics[0].Value;

        //        //cal bounce rate 
        //        string _str = DisplayPercentage(double.Parse(entry.Metrics[1].Value) / int.Parse(entry.Metrics[0].Value));
        //        double incnt = double.Parse(entry.Metrics[1].Value) / double.Parse(entry.Metrics[0].Value);
        //        incntDone = Math.Round(incnt * 100, 2);
        //        cnt = cnt + int.Parse(ss);
        //        //Response.Write(entry.Metrics[0].Value + "-" + entry.Metrics[1].Value + "-" + _str);
        //    }
        //    Response.Write("Bounce Rate : " + incntDone + "<br/>");

        //    // total pageviews of site
        //    query1.Ids = str;
        //    query1.Metrics = "ga:pageviews";//visitors
        //    query1.Sort = "ga:pageviews";
        //    query1.GAStartDate = DateTime.Now.AddMonths(-1).AddDays(-2).ToString("yyyy-MM-dd");
        //    query1.GAEndDate = DateTime.Now.AddDays(-3).ToString("yyyy-MM-dd");

        //    DataFeed dataFeedpageviews = service.Query(query1);
        //    foreach (DataEntry entry in dataFeedpageviews.Entries)
        //    {
        //        string st = entry.Title.Text;
        //        string ss = entry.Metrics[0].Value;
        //        _intPageViewVisit = Int32.Parse(ss);
        //        Response.Write("<br/>");
        //        Response.Write("Total PageView : " + ss);
        //        Response.Write("<br/>");
        //    }

        //    // total visits
        //    query1.Ids = str;
        //    query1.Metrics = "ga:visits";//visitors
        //    query1.Sort = "ga:visits";
        //    query1.GAStartDate = DateTime.Now.AddMonths(-1).AddDays(-2).ToString("yyyy-MM-dd");
        //    query1.GAEndDate = DateTime.Now.AddDays(-3).ToString("yyyy-MM-dd");
        //    query1.StartIndex = 1;
        //    DataFeed dataFeedVisits = service.Query(query1);
        //    foreach (DataEntry entry in dataFeedVisits.Entries)
        //    {
        //        string st = entry.Title.Text;
        //        string ss = entry.Metrics[0].Value;
        //        _intVisists = Int32.Parse(ss);
        //        Response.Write("<br/>");
        //        Response.Write("Total Visits : " + ss);
        //        Response.Write("<br/>");
        //    }

        //    // total New visits (count + %)
        //    query1.Ids = str;
        //    query1.Metrics = "ga:newVisits";//visitors
        //    query1.Sort = "ga:newVisits";

        //    query1.GAStartDate = DateTime.Now.AddMonths(-1).AddDays(-2).ToString("yyyy-MM-dd");
        //    query1.GAEndDate = DateTime.Now.AddDays(-3).ToString("yyyy-MM-dd");
        //    query1.StartIndex = 1;

        //    DataFeed dataFeedNwVisits = service.Query(query1);
        //    foreach (DataEntry entry in dataFeedNwVisits.Entries)
        //    {
        //        string st = entry.Title.Text;
        //        string ss = entry.Metrics[0].Value;
        //        double _dblPer1 = double.Parse(ss) * 100;
        //        double _dblPer2 = Math.Round(_dblPer1 / _intVisists, 2);

        //        Response.Write("<br/>");
        //        Response.Write("Total New Visits : " + ss + " Total New Visit(%) : " + _dblPer2 + "%");
        //        Response.Write("<br/><br/>");
        //        double _avgpagevisit = double.Parse(_intPageViewVisit.ToString()) / _intVisists;
        //        Response.Write("Pages/Visit  : " + Math.Round(_avgpagevisit, 2) + "%");
        //        Response.Write("<br/>");
        //    }

        //    // total visitors of site
        //    query1.Ids = str;
        //    query1.Metrics = "ga:visitors";//visitors
        //    query1.Sort = "ga:visitors";
        //    query1.GAStartDate = DateTime.Now.AddMonths(-1).AddDays(-2).ToString("yyyy-MM-dd");
        //    query1.GAEndDate = DateTime.Now.AddDays(-3).ToString("yyyy-MM-dd");
        //    query1.StartIndex = 1;

        //    DataFeed dataFeedvisitors = service.Query(query1);
        //    foreach (DataEntry entry in dataFeedvisitors.Entries)
        //    {
        //        string st = entry.Title.Text;
        //        string ss = entry.Metrics[0].Value;
        //        _intPageViewVisit = Int32.Parse(ss);
        //        Response.Write("<br/>");
        //        Response.Write("Total Visitors : " + ss);
        //        Response.Write("<br/>");
        //    }

        //    // countrywise visit
        //    Response.Write("<br/>");
        //    Response.Write("<span style='color:red;'><strong>Countrywise Visits</strong></span>");
        //    Response.Write("<br/>");

        //    query1.Ids = str;
        //    query1.Metrics = "ga:pageviews";
        //    query1.Dimensions = "ga:country";
        //    query1.Sort = "ga:country,ga:pageviews";
        //    query1.GAStartDate = DateTime.Now.AddMonths(-1).AddDays(-1).ToString("yyyy-MM-dd");
        //    query1.GAEndDate = DateTime.Now.AddDays(-2).ToString("yyyy-MM-dd");
        //    query1.StartIndex = 1;

        //    DataFeed dataFeedcntvisit = service.Query(query1);
        //    foreach (DataEntry entry in dataFeedcntvisit.Entries)
        //    {
        //        string st = entry.Title.Text;
        //        string ss = entry.Metrics[0].Value;
        //        _intPageViewVisit = Int32.Parse(ss);
        //        Response.Write("<br/>");
        //        Response.Write(ReplaceCountryString(st) + "::" + ss);
        //        Response.Write("<br/>");
        //    }

        //    Response.Write("<br/>");
        //    // direct traffic + search engine + refferels
        //    Response.Write("<br/>");
        //    Response.Write("<span style='color:red;'><strong>Direct Traffic Sources</strong></span>");
        //    Response.Write("<br/>");
        //    query1.Ids = str;
        //    query1.Metrics = "ga:entrances";//visitors
        //    query1.Dimensions = "ga:source,ga:medium";

        //    query1.Sort = "ga:medium,-ga:entrances";
        //    query1.GAStartDate = DateTime.Now.AddMonths(-1).AddDays(-2).ToString("yyyy-MM-dd");
        //    query1.GAEndDate = DateTime.Now.AddDays(-3).ToString("yyyy-MM-dd");
        //    query1.StartIndex = 1;

        //    int cntOrg = 0;
        //    int cntRef = 0;
        //    int cntDir = 0;
        //    DataFeed dataFeedTraffic = service.Query(query1);
        //    foreach (DataEntry entry in dataFeedTraffic.Entries)
        //    {
        //        string st = entry.Title.Text;
        //        string ss = entry.Metrics[0].Value;
        //        if (st.ToLower().Contains("organic"))
        //        {
        //            cntOrg = cntOrg + int.Parse(ss);
        //        }
        //        else if (st.ToLower().Contains("referral"))
        //        {
        //            cntRef = cntRef + int.Parse(ss);
        //        }
        //        else
        //        {
        //            cntDir = cntDir + int.Parse(ss);
        //        }

        //        double _pervisit = double.Parse(ss) / _intVisists;
        //        Response.Write("<br/>");
        //        Response.Write(ReplaceSourceString(st) + " : " + ss + " => " + Math.Round(_pervisit * 100, 2) + "%");
        //        Response.Write("<br/>");

        //    }

        //    Response.Write("<br/>Direct Traffic  : " + Math.Round((double.Parse(cntDir.ToString()) / _intVisists) * 100, 2) + "%<br/>");
        //    Response.Write("Referring Sites  : " + Math.Round((double.Parse(cntRef.ToString()) / _intVisists) * 100, 2) + "%<br/>");
        //    Response.Write("Search Engines : " + Math.Round((double.Parse(cntOrg.ToString()) / _intVisists) * 100, 2) + "%<br/>");

        //}
        //private string DisplayPercentage(double ratio)
        //{
        //    string _str = "";
        //    _str = string.Format("{0:0.0%}", ratio);
        //    return _str;
        //}

        //private string ReplaceSourceString(string str)
        //{
        //    string _strRety = "";
        //    _strRety = str.Replace("ga:source=", "");
        //    return _strRety.Replace("ga:medium=", "");
        //}

        //private string ReplaceCountryString(string str)
        //{
        //    string _strRety = "";
        //    _strRety = str.Replace("ga:country=", "");
        //    return _strRety;
        //}
    }
}