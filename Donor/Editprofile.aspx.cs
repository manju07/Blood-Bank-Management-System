using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.Configuration;
public partial class Donor_Editprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String s = WebConfigurationManager.ConnectionStrings["bbms"].ConnectionString;
        SqlConnection co = new SqlConnection(s);

        String us = Request.QueryString["username"];
        SqlCommand command = new SqlCommand("select * from donor_table where username='" + us + "'", co);
        try
        {
            co.Open();
            SqlDataReader Reader = command.ExecuteReader();
            Reader.Read();
            TextBox1.Text = Reader["name"].ToString();
            TextBox2.Text = Reader["last"].ToString();
            TextBox3.Text = Reader["dob"].ToString();
            TextBox4.Text = Reader["age"].ToString();
            TextBox5.Text = Reader["mobile"].ToString();


        }
        catch (Exception err)
        {

        }
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Donor/DonorHome.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String s = WebConfigurationManager.ConnectionStrings["bbms"].ConnectionString;
        SqlConnection co = new SqlConnection(s);

        String us = Request.QueryString["username"];
        SqlCommand command = new SqlCommand("alter table donor_table update  set name='"+TextBox1.Text+"',last='"+TextBox2.Text+"',dob='"
            +TextBox3.Text+"',age='"+TextBox4.Text+"',mobile='"+TextBox5.Text+"' where username='"+us+"'",co);
        try
        {
            co.Open();
            int p = command.ExecuteNonQuery();
            if (p == 0)
            {

                Label1.Text = "There is error occured";
            }
            else {
                Label1.Text = p + " is updated";
               }
        }
        catch (Exception err)
        {
            Label1.Text = err.ToString();
        }
    
    }
}