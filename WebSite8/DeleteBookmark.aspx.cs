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
        if (Page.IsPostBack == false && Request.Params["id"] != null)
        {
            int Id = int.Parse(Request.Params["id"].ToString());
            String query = "DELETE From bookmark Where id=@id";
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Patru Sorin\Desktop\WebSite8\App_Data\Database.mdf'");
            con.Open();
            SqlCommand com = new SqlCommand(query, con);
            com.Parameters.AddWithValue("id", Id);
            com.ExecuteNonQuery();
            con.Close();
        }
    }
}