﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppProject3
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection("server=ROJA;database=Schoolmanagement;trusted_connection=true;");
                SqlCommand cmd = new SqlCommand("select * from Courses", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                LblMsg.Text = "Number of Courses Are:" + ds.Tables[0].Rows.Count;
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
                con.Close();

            }
            catch (Exception ex)
            {
                LblMsg.Text = "Error!!!" + ex.Message;
            }

        }
    }
}