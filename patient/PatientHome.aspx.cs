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
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/patient/Postrequest.aspx");

    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/patient/blood_search.aspx");
   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s = Request.QueryString["username"];
        Response.Redirect("~/patient/ViewProfile.aspx?username="+s);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        s = Request.QueryString["username"];
        Response.Redirect("~/patient/EditProfile.aspx?username="+s);
    }
}