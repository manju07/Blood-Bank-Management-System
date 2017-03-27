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
public partial class Login : System.Web.UI.Page
{


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DonorLogin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/PatientLogin.aspx");
    }
}
