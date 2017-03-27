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
        String str = Request.QueryString["username"];
        SqlCommand command = new SqlCommand("select * from patient_table where username='"+str+"'", co);
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
        Response.Redirect("~/patient/patientHome.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
    

        }
        catch (Exception err)
        {

        }
        
    }
}