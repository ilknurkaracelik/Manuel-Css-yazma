using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _4504_Web.Model;

namespace _4504_Web
{
    public partial class Login : System.Web.UI.Page
    {
        SinifDBEntities db = new SinifDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            //html 5 özellikleri
            //Required = boş geçilemez
            //Placeholder = textBox arkasına yazı yazdırma

            //HttpWebRequest hwr = (HttpWebRequest)WebRequest.Create("http://www.milliyet.com.tr/");
            //HttpWebResponse hqr = (HttpWebResponse)hwr.GetResponse();
            //StreamReader sr = new StreamReader(hqr.GetResponseStream());
            //string deneme = sr.ReadToEnd();

        }
        protected void btnUyeOl_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx", true);
        }
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            #region Kontrol
            if (txtsifre.Text == "" | txtEmail.Text == string.Empty)
            {
                // Response.Write("<script>alert('Lütfen Email ve Şifre Belirtiniz');</script>");//CodeBehind üzerinden JavaScript yazmak
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "", "alert('E-Mail ve Şifre giriniz')".ToString(), true);
                //Asenkron Programlama -- Asenkrom mesaj
            }

            #endregion

            int KullaniciId = 0;
            var result = from k in db.Kullanicilar
                         where k.EMail == txtEmail.Text & k.sifre == txtsifre.Text
                         select new { k.ID, k.KayitTarihi, k.EMail };

            //var result2 = db.Kullanicilar.SingleOrDefault(k => k.EMail == txtEmail.Text & k.sifre == txtsifre.Text);

            //birden fazla data döndürdüğümüz zaman sadece bir satırın kullanılabilir.
            foreach (var item in result)
            {
                KullaniciId = item.ID;
            }




            //Uye bilgileri olan kullanıcıların bilgisini Sessiona attık.
            //Session sayfalar arası veri alış veririşi sağlayan özelliklerden en kullanılanıdır
            Session.Add("K_ID", KullaniciId);

            Session.Add("n", "nabar");

            Response.Redirect("Default.aspx", true);
        }
    }
}