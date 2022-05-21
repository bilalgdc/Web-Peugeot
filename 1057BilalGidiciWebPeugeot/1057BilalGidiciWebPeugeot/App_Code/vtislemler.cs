using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using _1057BilalGidiciWebPeugeot.App_Code;

namespace _1057BilalGidiciWebPeugeot.App_Code
{
    public class vtislemler
    {
        public SqlConnection baglan()
        {

            SqlConnection baglanti = new SqlConnection();
            baglanti.ConnectionString = "Data Source=OGR08;Initial Catalog=1057BilalGidiciPeugeotProject;Integrated Security=True";
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            return baglanti;
        }

        internal int uyeKaydet(string email, string kadi, string sifre, string tel)
        {
            SqlCommand uyeEkle = new SqlCommand("insert into tblUye values(@kadi,@sifre,@tel,@email)", baglan());
            uyeEkle.Parameters.AddWithValue("@kadi", kadi);
            uyeEkle.Parameters.AddWithValue("@sifre", sifre);
            uyeEkle.Parameters.AddWithValue("@tel",tel );
            uyeEkle.Parameters.AddWithValue("@email", email);
            int sonuc = uyeEkle.ExecuteNonQuery();
            baglan().Close();
            return sonuc;
        }

        internal bool uyeKontrol(string kadi, string sifre)
        {
            SqlDataAdapter dapt = new SqlDataAdapter("select * from tblUye where  KullaniciAdi='" + kadi + "' and Sifre = '" + sifre + "'", baglan());
            DataTable dt = new DataTable();
            dapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        internal object modelCek()
        {
            SqlDataAdapter dapt = new SqlDataAdapter("select * from tblModel", baglan());
            DataTable dt = new DataTable();
            dapt.Fill(dt);
            return dt;
        }

        internal object katCek()
        {
            SqlDataAdapter dapt = new SqlDataAdapter("select * from tblKategori", baglan());
            DataTable dt = new DataTable();
            dapt.Fill(dt);
            return dt;
        }

        internal int ModelKaydet(int katadi, string modeladi, string filename)
        {
            SqlCommand cmd = new SqlCommand("insert into tblModel values(@modelAdi,@katId,@resim,'0')", baglan());
            cmd.Parameters.AddWithValue("@modelAdi", modeladi);
            cmd.Parameters.AddWithValue("@katId", katadi);
            cmd.Parameters.AddWithValue("@resim", filename);
            int sonuc = cmd.ExecuteNonQuery();
            baglan().Close();
            return sonuc;
        }
        internal int bizAra(int model, string adsoy, string eposta, string tel)
        {
            SqlCommand cmd = new SqlCommand("insert into tblBizArayalim values(@adsoy,@eposta,@tel,@model)", baglan());
            cmd.Parameters.AddWithValue("@adsoy", adsoy);
            cmd.Parameters.AddWithValue("@eposta", eposta);
            cmd.Parameters.AddWithValue("@tel", tel);
            cmd.Parameters.AddWithValue("@model", model);
            int sonuc = cmd.ExecuteNonQuery();
            baglan().Close();
            return sonuc;
        }

        internal int onecikan(int onecikan)
        {
            SqlCommand cmd = new SqlCommand();
            int durum = odurum(onecikan);
            if (durum == 1)
            {
                cmd = new SqlCommand("update tblModel set onecikan='0' where modelId=@id", baglan());
                cmd.Parameters.AddWithValue("@id", onecikan);
                int sonuc = cmd.ExecuteNonQuery();
                baglan().Close();
                return 3;
            }
            else if(durum == 2)
            {
                return 0;
            }
            else
            {
                cmd = new SqlCommand("update tblModel set onecikan='1' where modelId=@id", baglan());
                cmd.Parameters.AddWithValue("@id", onecikan);
                int sonuc = cmd.ExecuteNonQuery();
                baglan().Close();
                return 1;
            }      
        }

        private int odurum(int onecikan)
        {
            SqlCommand cmd = new SqlCommand("select onecikan from tblModel where modelId=@onecikan", baglan());
            cmd.Parameters.AddWithValue("@onecikan",onecikan);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return int.Parse(dr["onecikan"].ToString());
            }
            else return 2;
        }

        internal object onecikanCek()
        {
            SqlDataAdapter dapt = new SqlDataAdapter("select * from tblModel where onecikan='1'", baglan());
            DataTable dt = new DataTable();
            dapt.Fill(dt);
            return dt;
        }

    }
}