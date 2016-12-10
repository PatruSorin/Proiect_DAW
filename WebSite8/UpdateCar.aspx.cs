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
            String query = "Select * From Car Where id=@id";
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Student\WebSite8\App_Data\Database.mdf';Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand(query, con);
            com.Parameters.AddWithValue("id", Id);
            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                Model.Text = reader["Model"].ToString();
                MaxSpeed.Text = reader["MaxSpeed"].ToString();
                Power.Text = reader["Power"].ToString();
                Color.Text = reader["Color"].ToString();
                Date.Text = DateTime.Parse(reader["FDate"].ToString()).ToShortDateString();
            }
        }
    }
    
    protected void UpdateButtonClick(object sender, EventArgs e)
    {
        if(Page.IsValid && Request.Params["id"]!=null)
        {
            int Id = int.Parse(Request.Params["id"].ToString());
            int BrandVar = Int16.Parse(Brand.SelectedValue);
            string ModelVar = Model.Text;
            float MaxSpeedVar = float.Parse(MaxSpeed.Text);
            float PowerVar = float.Parse(Power.Text);
            string ColorVar = Color.Text;
            DateTime DateVar = DateTime.Parse(Date.Text);
            String query = "Update Car Set IdBrand=@BrandVar,Model=@ModelVar,MaxSpeed=@MaxSpeedVar,Power=@PowerVar,Color=@ColorVar,FDate=@DateVar Where id=@id";
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename='C:\Users\Student\WebSite8\App_Data\Database.mdf';Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand(query, con);
            com.Parameters.AddWithValue("id", Id);
            com.Parameters.AddWithValue("ModelVar", ModelVar);
            com.Parameters.AddWithValue("MaxSpeedVar", MaxSpeedVar);
            com.Parameters.AddWithValue("PowerVar", PowerVar);
            com.Parameters.AddWithValue("ColorVar", ColorVar);
            com.Parameters.AddWithValue("DateVar", DateVar);
            com.Parameters.AddWithValue("BrandVar", BrandVar);
            com.ExecuteNonQuery();
        }
    }
}