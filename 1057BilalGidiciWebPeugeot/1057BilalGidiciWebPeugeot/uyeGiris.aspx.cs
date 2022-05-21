using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _1057BilalGidiciWebPeugeot.App_Code;

namespace _1057BilalGidiciWebPeugeot
{
    public partial class uyeGiris : System.Web.UI.Page
    {
        vtislemler vt = new vtislemler();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }


        protected void ButtonGiris_Click1(object sender, EventArgs e)
        {
            string kadi = TextBoxkullaniciadi.Text.Trim();
            string sifre = TextBoxkullanicisifre.Text.Trim();
            if (vt.uyeKontrol(kadi, sifre))
            {
                Session["kullanici"] = kadi;/*kullanici oturumu baslatildi*/
                
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('kullanıcı adı yada sifre hatalı')</Script>");
            }
        }
    }
}