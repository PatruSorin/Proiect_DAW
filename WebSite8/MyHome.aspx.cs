using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id_utilizator = User.Identity.Name;
        SqlDataSource1.SelectCommand = "SELECT * FROM bookmark b , my_bookmarks m where b.id = m.id_bookmark and m.id_utilizator = '" + id_utilizator + "'";
    }
}