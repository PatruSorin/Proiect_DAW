﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void Dropwdown1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

            SqlDataSource1.SelectCommand = "SELECT * FROM [bookmark] ORDER BY date desc";

     }    
    protected void Button2_Click(object sender, EventArgs e)
{
     SqlDataSource1.SelectCommand = "SELECT * FROM [bookmark] ORDER BY date";  
       
}
    protected void Button3_Click(object sender, EventArgs e)
{
     SqlDataSource1.SelectCommand = "SELECT * FROM [bookmark] ORDER BY popularitate";  
       
}
    protected void Button4_Click(object sender, EventArgs e)
{
     SqlDataSource1.SelectCommand = "SELECT * FROM [bookmark] ORDER BY popularitate desc";  
       
}
}