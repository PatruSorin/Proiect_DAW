using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddButtonClick(object sender, EventArgs e)
    {
        String titlu = Titlu.Text;
        String link = Link.Text;
        String descriere = Descriere.Text;
        String urlImagine = UrlImagine.Text;
        String cuvinteCheie = CuvinteCheie.Text;
        DateTime date = DateTime.Now;

        String query = "INSERT INTO bookmark (titlu,link,descriere,url_imagine,cuvinte_cheie,date) VALUES (@titlu,@link,@descriere,@urlImagine,@cuvinteCheie,@date)";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Patru Sorin\Desktop\WebSite8\App_Data\Database.mdf'");
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        com.Parameters.AddWithValue("titlu",titlu);
        com.Parameters.AddWithValue("link", link);
        com.Parameters.AddWithValue("descriere", descriere);
        com.Parameters.AddWithValue("urlImagine", urlImagine);
        com.Parameters.AddWithValue("cuvinteCheie", cuvinteCheie);
        com.Parameters.AddWithValue("date", date);
        com.ExecuteNonQuery();

        
    }
}