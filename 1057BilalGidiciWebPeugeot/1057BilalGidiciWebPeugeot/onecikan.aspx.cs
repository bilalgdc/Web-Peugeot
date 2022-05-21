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
    public partial class onecikan : System.Web.UI.Page
    {
        vtislemler vt = new vtislemler();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                DropDownListaracmodel.DataSource = vt.modelCek(); /*.DataSource = vt.katCek();*/
                DropDownListaracmodel.DataValueField = "modelId";
                DropDownListaracmodel.DataTextField = "ModelAdi";
                DropDownListaracmodel.DataBind();
            }
            
        }

        protected void Buttononecikananasayfa_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Buttononecikanonay_Click(object sender, EventArgs e)
        {
            int onecikan = int.Parse(DropDownListaracmodel.SelectedValue);
            int gonder = vt.onecikan(onecikan);
            if(gonder == 0)
            {
                Response.Write("<script>alert('Başarısız.');</script>");
            }
            else if(gonder == 1)
            {
                Response.Write("<script>alert('Öne Çıkanlara eklendi.');</script>");
            }
            else if(gonder == 3)
            {
                Response.Write("<script>alert('Öne çıkanlardan kaldırıldı.');</script>");
            }
        }

    }
}