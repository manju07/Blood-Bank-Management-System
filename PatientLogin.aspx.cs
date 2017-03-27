using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.Configuration;
public partial class PatientLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        String s = WebConfigurationManager.ConnectionStrings["bbms"].ConnectionString;
        SqlConnection co = new SqlConnection(s);
        SqlCommand command = new SqlCommand("select *from patient_table", co);
        try
        {
            co.Open();
            String s1 = txtUsername.Text;
            String s2 = txtPassword.Text;
            SqlDataReader Reader = command.ExecuteReader();
            while (Reader.Read())
            {
                if (s1.Equals(Reader["username"]) && s2.Equals(Reader["password"]))
                {
                    Response.Redirect("~/patient/PatientHome.aspx?username="+(String)Reader["username"]);
                }
            }

            lblMsg.Text = "sorry entered wrong password or username";
        }
        catch (Exception ero)
        {
            lblMsg.Text = "hi there is an error";
        }

    }
}