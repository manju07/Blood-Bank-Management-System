using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;

public partial class patient_blood_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String s = WebConfigurationManager.ConnectionStrings["bbms"].ConnectionString;
        SqlConnection co = new SqlConnection(s);
        String str = "select name,city,email,mobile from donor_table where city='" + DropDownList1.SelectedItem.Value + "' and blood_group='"+DropDownList2.SelectedItem.Value+"'";
        SqlCommand command = new SqlCommand(str, co);
        SqlDataAdapter adapter = new SqlDataAdapter(command);
        DataSet set = new DataSet();
        try
        {
            adapter.Fill(set, "donor_table");
            GridView1.DataSource = set;
            GridView1.DataBind();
        }
        catch (Exception err)
        {
            Label1.Text = "sorry there is an error"+err.ToString();
        }
        finally {

            co.Close();

        }
    }
}