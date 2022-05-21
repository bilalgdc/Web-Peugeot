using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _1057BilalGidiciWebPeugeot.App_Code;

namespace _1057BilalGidiciWebPeugeot
{
    public partial class kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["kullanici"] != null)
            {
                Panel2.Visible = false;
                Panel1.Visible = true;
                Label1.Text = Session["kullanici"].ToString();
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
        }

        protected void ButtonGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void ButtonKaydol_Click(object sender, EventArgs e)
        {
            vtislemler vt = new vtislemler();
            string email = TextBoxEposta.Text.Trim();
            string kadi = TextBoxkullaniciadi.Text.Trim();
            string sifre = TextBoxkullanicisifre.Text.Trim();
            string tel =TextBoxtelNo.Text.Trim();
            if (email != "" && kadi != "" && sifre != ""&& tel !="")
            {
                int sonuc = vt.uyeKaydet(email, kadi, sifre, tel);
                if (sonuc > 0)
                    Response.Write("<script>alert('Kayıt işlemi yapıldı.');</script>");

                TextBoxEposta.Text="";
                TextBoxkullaniciadi.Text="";
                TextBoxkullanicisifre.Text="";
                TextBoxtelNo.Text="";

            }
            else
            {
                Response.Write("<script>alert('Kayıt işlemi yapılmadı.');</script>");
            }
    
        }

        protected void Buttonmodelekle_Click(object sender, EventArgs e)
        {
            Response.Redirect("modelEkle.aspx");
        }

        protected void Buttonoturumkapat_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }

        protected void Buttongiriskaydol_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayit.aspx");
        }

        protected void Buttononecikan_Click(object sender, EventArgs e)
        {
            Response.Redirect("onecikan.aspx");
        }
    }
}