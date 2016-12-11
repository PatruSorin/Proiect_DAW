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
   
 
    protected void Categorie_SelectedIndexChanged(object sender, EventArgs e)
    {
        Categorie.Enabled = false;
      
       string categorie = Categorie.SelectedValue;
       int id_bookmark = int.Parse(Request.Params["id"].ToString());
       string id_utilizator = User.Identity.Name;


       String query = "INSERT INTO my_bookmarks (categorie,id_bookmark,id_utilizator) VALUES (@categorie,@id_bookmark,@id_utilizator)";
       SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Patru Sorin\Desktop\WebSite8\App_Data\Database.mdf'");
       con.Open();
       SqlCommand com = new SqlCommand(query, con);
       com.Parameters.AddWithValue("categorie", categorie);
       com.Parameters.AddWithValue("id_bookmark", id_bookmark);
       com.Parameters.AddWithValue("id_utilizator", id_utilizator);
       
       com.ExecuteNonQuery();

    }
}