using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _1057BilalGidiciWebPeugeot.App_Code;
using System.IO;

namespace _1057BilalGidiciWebPeugeot
{
    public partial class modelEkle : System.Web.UI.Page
    {
        vtislemler vt = new vtislemler();
        protected void Page_Load(object sender, EventArgs e)
        {    
            if (!IsPostBack)
            {
                DropDownListarackategori.DataSource = vt.katCek();
                DropDownListarackategori.DataValueField = "katId";
                DropDownListarackategori.DataTextField = "KategoriAdi";
                DropDownListarackategori.DataBind();
            }

        }

        protected void Buttonanasayfamodelekle_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void ButtonOnay_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                  
                      string filename = Path.GetFileName(FileUpload1.FileName);
                      if (filename != "")
                      {
                          FileUpload1.SaveAs(Server.MapPath("~/resimler/") + filename);
                          int katadi =int.Parse(DropDownListarackategori.SelectedValue);
                          string modeladi = TextBoxmodeladi.Text.Trim();  
                          if (vt.ModelKaydet(katadi,modeladi, filename) > 0)
                          {
                              Response.Write("<script>alert('kayıt yapıldı.')</script>");
                          }
                          else
                          {
                              Response.Write("<script>alert('ERROR 404 NOT ')</script>");
                          }

                        }
                   }
                catch (Exception ex)
                {
                    lblDurum.Text = "Dosya yüklenemedi: " + ex.Message;
                }
            }
        }

    }
}