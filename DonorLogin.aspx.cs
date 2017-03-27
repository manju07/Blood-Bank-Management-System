using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.EnterpriseServices;
public partial class DonorLogin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {

        }

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection co = new SqlConnection();
        co.ConnectionString = (@"Data Source=(localdb)\v11.0;Initial Catalog=bbms;Integrated Security=True;Pooling=False;");
        SqlCommand command = new SqlCommand("select *from donor_table", co);
        try
        {
            co.Open();
            String s1 = txtUsername.Text;
            String s2 = txtPassword.Text;
            SqlDataReader Reader = command.ExecuteReader();
            while (Reader.Read())
            {
                if (s1.Equals(Reader["username"])  && s2.Equals(Reader["password"]))
                {
                    this.ViewState["username"] = (string)Reader["username"];
                    Response.Redirect("~/Donor/DonorHome.aspx?username="+(String)Reader["username"]);
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