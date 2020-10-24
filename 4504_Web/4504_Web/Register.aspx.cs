using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _4504_Web.Model;

namespace _4504_Web
{
    public partial class Register : System.Web.UI.Page
    {
        SinifDBEntities db = new SinifDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            Kullanicilar kc = new Kullanicilar()
            {
                AdiSoyadi = txtAdiSoyadi.Text,
                EMail = txtEmail.Text,
                KayitTarihi = DateTime.Now,
                MedeniHali = Convert.ToBoolean(rdListMedeniHali.SelectedIndex),
                sifre = txtSifre.Text
            };
            db.Kullanicilar.Add(kc);
            db.SaveChanges();
            //Önce veritabanına kullanıcıyı kayıt et

            Response.Redirect("Login.aspx", true);
            //Ardından Login.aspx sayfasına Yönlendir
        }
    }
}