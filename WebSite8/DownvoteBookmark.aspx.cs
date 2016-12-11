using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["id"] != null && !Page.IsPostBack)
        {
            int Id = int.Parse(Request.Params["id"].ToString());
            int popularitate = 0;
            String query = "Select * From bookmark Where id=@id";
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Patru Sorin\Desktop\WebSite8\App_Data\Database.mdf';Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand(query, con);
            com.Parameters.AddWithValue("id", Id);
            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                popularitate = int.Parse(reader["popularitate"].ToString());
                if (popularitate != 0)
                    popularitate--;
                else
                    popularitate = 0;
            }
            reader.Close();
            query = "Update bookmark Set popularitate=@popularitate Where id=@id";
            com = new SqlCommand(query, con);
            com.Parameters.AddWithValue("id", Id);
            com.Parameters.AddWithValue("popularitate", popularitate);
            com.ExecuteNonQuery();
            Response.Redirect("~/Index.aspx");
        }
    }
}