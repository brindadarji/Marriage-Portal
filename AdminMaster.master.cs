using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblusername.Text = Session["name"].ToString().ToUpper(); ;
        imguser.ImageUrl = Session["photo"].ToString().ToUpper();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login1.aspx");
    
    }
}
