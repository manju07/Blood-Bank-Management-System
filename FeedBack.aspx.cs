using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.Configuration;

public partial class FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
     {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String s = WebConfigurationManager.ConnectionStrings["bbms"].ConnectionString;
           SqlConnection co=new SqlConnection(s);
        String str="insert into feedback values(";
        str+="'"+TextBox2.Text+"',";
        str+="'"+TextBox3.Text+"')";
        SqlCommand command=new SqlCommand(str,co);
        try
        {
            co.Open();
            command.ExecuteNonQuery();
            Label4.Text = "Successfully submitted";
            
        }
        catch (Exception err)
        {
            Label4.Text = err.ToString();
        }
        finally {

            co.Close();
            Response.Redirect("~/Home.aspx");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
    }
}
