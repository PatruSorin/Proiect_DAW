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
            
            SqlDataSource1.SelectCommand = "SELECT * FROM [comentarii] where id_bookmark="+Id;
            
        
        }
    }
    protected void submit1_Click(object sender, EventArgs e)
    {
        var t1 = (TextBox)LoginView1.FindControl("t1");

        int id_bookmark;


        id_bookmark = int.Parse(Request.Params["id"].ToString());


        String continut = t1.Text;
        String utilizator = User.Identity.Name;

        String query = "INSERT INTO comentarii (continut,id_bookmark,utilizator) VALUES (@continut,@id_bookmark,@utilizator)";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Patru Sorin\Desktop\WebSite8\App_Data\Database.mdf'");
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        com.Parameters.AddWithValue("continut", continut);
        com.Parameters.AddWithValue("id_bookmark", id_bookmark);
        com.Parameters.AddWithValue("utilizator", utilizator);

        com.ExecuteNonQuery();

  
    }





    protected void submit2_Click(object sender, EventArgs e)
    {

        var t1 = (TextBox)LoginView1.FindControl("t2");

        int id_bookmark;

       
            id_bookmark = int.Parse(Request.Params["id"].ToString());
        

        String continut = t1.Text;
        String utilizator = User.Identity.Name;

        String query = "INSERT INTO comentarii (continut,id_bookmark,utilizator) VALUES (@continut,@id_bookmark,@utilizator)";
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Patru Sorin\Desktop\WebSite8\App_Data\Database.mdf'");
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        com.Parameters.AddWithValue("continut", continut);
        com.Parameters.AddWithValue("id_bookmark", id_bookmark);
        com.Parameters.AddWithValue("utilizator", utilizator);

        com.ExecuteNonQuery();




    }
}