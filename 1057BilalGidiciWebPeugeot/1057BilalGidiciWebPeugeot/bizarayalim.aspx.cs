using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _1057BilalGidiciWebPeugeot.App_Code;

namespace _1057BilalGidiciWebPeugeot
{
    public partial class bizarayalim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            vtislemler vt = new vtislemler();

            if (!IsPostBack)
            {
                DropDownListaracmodel.DataSource = vt.modelCek(); /*.DataSource = vt.katCek();*/
                DropDownListaracmodel.DataValueField = "modelId";
                DropDownListaracmodel.DataTextField = "ModelAdi";
                DropDownListaracmodel.DataBind();
            }

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
        protected void Buttonmodelekle_Click(object sender, EventArgs e)
        {
            Response.Redirect("modelEkle.aspx");
        }

        protected void Buttonoturumkapat_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }

        protected void Buttononay_Click(object sender, EventArgs e)
        {
            vtislemler vt = new vtislemler();
            int model = int.Parse(DropDownListaracmodel.SelectedValue);
            string adsoy = TextBoxAdinizSoyadiniz.Text.Trim();
            string eposta = TextBoxeposta.Text.Trim();
            string tel = TextBoxTelefon.Text.Trim();
            if (vt.bizAra(model, adsoy, eposta, tel) > 0)
            {
                Response.Write("<script>alert('Kayıt Eklendi');</script>");
                

            }
            else
            {
                Response.Write("<script>alert('Kayıt Yapılamadı.. Kontrol Edin')</script>");
            }

        }

        protected void Buttonanasayfa_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

    }
}