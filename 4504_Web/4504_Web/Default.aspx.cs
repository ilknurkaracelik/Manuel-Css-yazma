using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _4504_Web.Model;

namespace _4504_Web
{
    public partial class Default : System.Web.UI.Page
    {
        SinifDBEntities db = new SinifDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["K_ID"] != null)
            {
                int OAnkiKullaniciID = Convert.ToInt32(Session["K_ID"]);

                var result = db.vw_KullaniciGetir.Where(k => k.ID == OAnkiKullaniciID);
            }


            #region dictionary
            Dictionary<string, List<string>> ulkeler = new Dictionary<string, List<string>>();
            ulkeler.Add("Türkiye", new List<string>() { "İSTANBUL", "ANKARA", "ADANA", "KONYA", "GİRESUN", "ARTVİN" });
            ulkeler.Add("ALMANYA", new List<string>() { "BERLİN", "MUNICH", "HAMBURG" });
            ulkeler.Add("RUSYA", new List<string>() { "PETERSBURG", "MOSKOVA", "", "KAZAN" });
            ulkeler.Add("İTALYA", new List<string>() { "MİLANO", "ROMA", "LAZİO" });
            #endregion


        }
    }
}