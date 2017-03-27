using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;
using System.Web.Configuration;

public partial class patient_Postrequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        date.Text = Calendar1.SelectedDate.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String s=WebConfigurationManager.ConnectionStrings["bbms"].ConnectionString;
        SqlConnection co = new SqlConnection(s);
        String cmd = "insert into admin_table values(";
        cmd += "'" + name.Text + "',";
        cmd += "'" +blood_group.Text + "',";
        cmd += "'" + city.Text + "',";
        cmd += "'" +hospital.Text + "',";
        cmd += "'" +doctor.Text + "',";
        cmd += "'" + date.Text+ "',";
        cmd += "'" + address.Text + "',";
        cmd += "'" + mobile.Text + "')";
        SqlCommand command = new SqlCommand(cmd, co);

        try
        {

            co.Open();
            int p = command.ExecuteNonQuery();
            if (p == 0)
            {

            }
            else
            {
                Label2.Text = "successfully submitted";
            }

        }
        catch (Exception err)
        {

            Label2.Text = err.ToString();
        }
        
        

    }
}