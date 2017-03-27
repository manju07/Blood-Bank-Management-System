using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Donor_DonorHome : System.Web.UI.Page
{
    String s;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        s = Request.QueryString["username"];
        Response.Redirect("~/Donor/notifications.aspx?username="+s);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s = Request.QueryString["username"];

        Response.Redirect("~/Donor/ViewProfile.aspx?username="+s);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        s = Request.QueryString["username"];

        Response.Redirect("~/Donor/Editprofile.aspx?username=" + s);
 
        
    }
}