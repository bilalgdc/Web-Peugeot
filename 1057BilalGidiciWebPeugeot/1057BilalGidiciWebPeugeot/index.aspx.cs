using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _1057BilalGidiciWebPeugeot.App_Code;

namespace _1057BilalGidiciWebPeugeot
{
    public partial class index : System.Web.UI.Page
    {
        vtislemler vt = new vtislemler();
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
            Repeateronecikan.DataSource = vt.onecikanCek();
            Repeateronecikan.DataBind();

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